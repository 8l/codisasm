CODISASM=/home/psylox/NetBeansProjects/C-C++/codisasmv12/build/codisasmv2
RTL2DOT=/home/psylox/NetBeansProjects/C-C++/labs/rtl2dot
DOT2EDG=python /home/psylox/NetBeansProjects/C-C++/codisasmv12-ext/tools/dot_to_edge2.py
SIGTOOL=/home/psylox/NetBeansProjects/C-C++/codisasmv12-ext/tools/sigtool
SIGDBPATH=/home/psylox/NetBeansProjects/C-C++/codisasmv12-ext/tools/sigtooldb

TESTDIR=/home/psylox/NetBeansProjects/C-C++/codisasmv12/tests/ccs2015/malardalen

tests:
	make disas
	make ass
	make sig
	make res

disas:
	$(CODISASM) -i $(TESTDIR)/adpcm.exe -x $(TESTDIR)/adpcm.exe.dot -a -l $(TESTDIR)/adpcm.lst
	$(CODISASM) -i $(TESTDIR)/compress.exe -x $(TESTDIR)/compress.exe.dot -a -l $(TESTDIR)/compress.lst
	$(CODISASM) -i $(TESTDIR)/ns.exe -x $(TESTDIR)/ns.exe.dot -a -l $(TESTDIR)/ns.lst
	$(CODISASM) -i $(TESTDIR)/nsichneu.exe -x $(TESTDIR)/nsichneu.exe.dot -a -l $(TESTDIR)/nsichneu.lst
	$(CODISASM) -i $(TESTDIR)/statemate.exe -x $(TESTDIR)/statemate.exe.dot -a -l $(TESTDIR)/statemate.lst

ass:
	$(RTL2DOT) -i $(TESTDIR)/adpcm.c.248r.dfinish -o $(TESTDIR)/adpcm.gcc.dot -s
	$(RTL2DOT) -i $(TESTDIR)/compress.c.248r.dfinish -o $(TESTDIR)/compress.gcc.dot -s
	$(RTL2DOT) -i $(TESTDIR)/ns.c.248r.dfinish -o $(TESTDIR)/ns.gcc.dot -s
	$(RTL2DOT) -i $(TESTDIR)/nsichneu.c.248r.dfinish -o $(TESTDIR)/nsichneu.gcc.dot -s
	$(RTL2DOT) -i $(TESTDIR)/statemate.c.248r.dfinish -o $(TESTDIR)/statemate.gcc.dot -s

sig:
	$(DOT2EDG) $(TESTDIR)/adpcm.gcc.dot $(TESTDIR)/adpcm.gcc.sig
	$(DOT2EDG) $(TESTDIR)/compress.gcc.dot $(TESTDIR)/compress.gcc.sig
	$(DOT2EDG) $(TESTDIR)/ns.gcc.dot $(TESTDIR)/ns.gcc.sig
	$(DOT2EDG) $(TESTDIR)/nsichneu.gcc.dot $(TESTDIR)/nsichneu.gcc.sig
	$(DOT2EDG) $(TESTDIR)/statemate.gcc.dot $(TESTDIR)/statemate.gcc.sig

	$(DOT2EDG) $(TESTDIR)/adpcm.exe.dot $(TESTDIR)/adpcm.exe.sig
	$(DOT2EDG) $(TESTDIR)/compress.exe.dot $(TESTDIR)/compress.exe.sig
	$(DOT2EDG) $(TESTDIR)/ns.exe.dot $(TESTDIR)/ns.exe.sig
	$(DOT2EDG) $(TESTDIR)/nsichneu.exe.dot $(TESTDIR)/nsichneu.exe.sig
	$(DOT2EDG) $(TESTDIR)/statemate.exe.dot $(TESTDIR)/statemate.exe.sig


res:
	rm $(SIGDBPATH)/*.db
	@echo 
	@echo "###############################################################"
	@echo 
	@$(SIGTOOL) --learn-sub -r 0 $(SIGDBPATH)/adpcm.db $(TESTDIR)/adpcm.gcc.sig
	@echo 
	@$(SIGTOOL) --learn-sub -r 0 $(SIGDBPATH)/compress.db $(TESTDIR)/compress.gcc.sig
	@echo 
	@$(SIGTOOL) --learn-sub -r 0 $(SIGDBPATH)/ns.db $(TESTDIR)/ns.gcc.sig
	@echo 
	@$(SIGTOOL) --learn-sub -r 0 $(SIGDBPATH)/nsichneu.db $(TESTDIR)/nsichneu.gcc.sig
	@echo 
	@$(SIGTOOL) --learn-sub -r 0 $(SIGDBPATH)/statemate.db $(TESTDIR)/statemate.gcc.sig
	@echo 

	@$(SIGTOOL) --dist-sub -r 0 $(SIGDBPATH)/adpcm.db $(TESTDIR)/adpcm.exe.sig
	@echo 
	@$(SIGTOOL) --dist-sub -r 0 $(SIGDBPATH)/compress.db $(TESTDIR)/compress.exe.sig
	@echo 
	@$(SIGTOOL) --dist-sub -r 0 $(SIGDBPATH)/ns.db $(TESTDIR)/ns.exe.sig
	@echo 
	@$(SIGTOOL) --dist-sub -r 0 $(SIGDBPATH)/nsichneu.db $(TESTDIR)/nsichneu.exe.sig
	@echo 
	@$(SIGTOOL) --dist-sub -r 0 $(SIGDBPATH)/statemate.db $(TESTDIR)/statemate.exe.sig
	@echo 
	@echo "###############################################################"
