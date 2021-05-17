include colors.mk
.PHONY: pyfloat_output cfloat_output

%.o:%.c
	$(call make_echo_build_c_object)
	@gcc -c -o$@ $<

cfloat:cfloat.o
	$(call make_echo_link_c_executable)
	@gcc $< -o $@

cfloat_output: cfloat
	$(call make_echo_generate_file)
	./$< | tee $@

pyfloat_output: pyfloat.py
	$(call make_echo_generate_file)
	python3 $< | tee $@

test:cfloat_output pyfloat_output
	$(call make_echo_run_test,"Comparing $^")
	@diff $^

clean:
	rm -f cfloat *_output *.o
