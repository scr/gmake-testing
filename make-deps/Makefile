MODULES = a b c

INS = $(addsuffix .in, $(MODULES))
OUTS = $(addsuffix .out, $(MODULES))
TESTRESULTS = $(addsuffix .testisolate, $(MODULES))
TEST_NAMES = $(addprefix test_, $(MODULES))

all: $(OUTS)

tests: $(TEST_NAMES)

test_a: a.testisolate
test_b: b.testisolate
test_c: c.testisolate

.PHONY: testdiffs
testdiffs:
	$(MAKE) tests -t
	$(MAKE) tests $(foreach diff, $(DIFFS), -W $(diff))

EXTRA_a = aa.in

$(OUTS): %.out: %.in
	cat $< $(EXTRA_$(*)) > $@

a.out: aa.in

%.testisolate: %.out
	touch $@

foo: $(TESTRESULTS)
	echo $?
	touch $@

.PHONY: clean
clean:
	-rm $(TESTRESULTS)
	-rm $(OUTS)