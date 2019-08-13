Return-Path: <usb-storage+bncBDMYPB44VAFRBINHZPVAKGQE5OFI4CI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x747.google.com (mail-qk1-x747.google.com [IPv6:2607:f8b0:4864:20::747])
	by mail.lfdr.de (Postfix) with ESMTPS id CC6DF8BCC8
	for <lists+usb-storage@lfdr.de>; Tue, 13 Aug 2019 17:13:38 +0200 (CEST)
Received: by mail-qk1-x747.google.com with SMTP id k5sf6200422qke.15
        for <lists+usb-storage@lfdr.de>; Tue, 13 Aug 2019 08:13:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565709217; cv=pass;
        d=google.com; s=arc-20160816;
        b=0gOaPnYIw5HWfmhwfMinotuojQdzUsSEPvogomSAwrbWcJ4EysYhmUsqDwBqZ9zqrF
         cso2tcRWlrr9E3iZEcYcl5xbiL9aAowQnZQHyIv37hDhH9rL7K9ionL3tN7m9A/IrrTC
         HzCwd09Y2irV9nBLnEYXHfd6bKG/2RH0TSii+8Zpxqzc2qgJYR2I/ALaxgdMscdh5kZ1
         1pUDNQ/Cm29k/lgUlTgBxUcq/rRTUd1JtsQMN+URivj+48FCZv7YP9yUfd3crLH0TjKE
         HRmRJyH7cP+VSGRhRnF+ovkwiH1Mn8JU7jGOVLsN0ZUAoMjm0VxRUYfLbJKsTnmwEkGm
         +IYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=cKhiBvUjcCIFG1TsDDIcV395eMKC87vHkN84+BYtTEs=;
        b=vnAl9urWVnP8RkRauacZMIIajI4YRNeoZtP+LOTojYHg0PNdJDde2Gpx/Z5oVYRPcG
         1gSFNAcn8VENj4Nh3UcfN1dQxyAyUM+3oLfzexhorCdKopHIwqLORZ0gySF7u1MWN+Zg
         9kmN4g6ECKB45lhGGEWUQ477uRnrGNsCs6h3sGNYgpBbsW64UadKTKtc3Gh9XKMNJypN
         /JVhXn4qbVeUl12hhzMdDepM3dDMaB672Av0m1qQgJ8KDJc+jlR5x8LUa0dbu7GsEMR6
         n2jfE9sj3fncV02likc8I5aoT6AQsPYh/QE2zQcmzUBc1m/6OdcPL53/3hcS1ori/rng
         3sEw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jvjNRqGM;
       spf=pass (google.com: domain of 31qpsxqgkagcrfjssnhmlttlqj.htr@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=31qpSXQgKAGcRFJSSNHMLTTLQJ.HTR@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cKhiBvUjcCIFG1TsDDIcV395eMKC87vHkN84+BYtTEs=;
        b=LB2AklYG6LnWtSbXr6e5eJKbrHe2Wlr9E2jbVMloT44vzZixt6kHFfJhS5V1MUrRAl
         sVm5l6FSusOvyQ6ynW1OGLAcVw06Z1qAj3SiX08CJsEFQH6x8Vl5B4V+Rt61MOWrbB25
         8BiKj0vLsjFH3PWUPDCIOEnzVjBaT9SybIj6M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=cKhiBvUjcCIFG1TsDDIcV395eMKC87vHkN84+BYtTEs=;
        b=LAyplGXgAEsi3+MINkuPmM31wZji+CA6RMollUNLZ3Z4NqBhff/+0U3ZmYOTtE+gSL
         Qvlr21dj7K4iZBEsSFiDPPa47oWouj+0LPCF1InF1HE7+Vp5r5/+mDeuIhrroQnewTj5
         clP3n6x6CZTX9+LXvvJVpvAvvjukN8TFZZXXeAF6EVIPQNsB5/kgOBnBhILUFZQb2yOL
         4JHMGzu/plfyh/6KaC0+HXPybnSh6ebbe32HG/a/8OhjQHfjPv4+6VDBK/DyEmMC8bU5
         ZkCuzfDuCAitNxZ3OzA8X87LbD2UsnEk5XzXQbsGNs7GeZ5yhnnV9Lw49XqIuvGSzAn9
         c76g==
X-Gm-Message-State: APjAAAU50K+8tLQWNi/xZ//OcJKHmwQjyhxEtXYZPwUb+706ZY1seL/t
	KIYblZwYFndYpoB/VSfZCXwPaA==
X-Google-Smtp-Source: APXvYqyNMmayPafZw91LQJbdIDCtlM8rRoJ/nUB0W+aluKyegRI5ZrCXMrk/qgKzCOYZ7YiQiGZ5Gw==
X-Received: by 2002:a0c:ec84:: with SMTP id u4mr12543732qvo.205.1565709217678;
        Tue, 13 Aug 2019 08:13:37 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac8:2694:: with SMTP id 20ls3275650qto.4.gmail; Tue, 13 Aug
 2019 08:13:37 -0700 (PDT)
X-Received: by 2002:ac8:688:: with SMTP id f8mr34443975qth.130.1565709217455;
        Tue, 13 Aug 2019 08:13:37 -0700 (PDT)
Received: by 2002:ae9:e406:0:0:0:0:0 with SMTP id q6msqkc;
        Tue, 13 Aug 2019 05:19:34 -0700 (PDT)
X-Received: by 2002:a05:6214:10ea:: with SMTP id q10mr18423970qvt.128.1565698774665;
        Tue, 13 Aug 2019 05:19:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565698774; cv=none;
        d=google.com; s=arc-20160816;
        b=RyxQtJX2MTTC9isCb3UhkC6s1ZbxsXb2vpxSQEK3tXpN66RY5jPB6rlKEzbWtAyGf3
         T8TTgI60UaDuhVkG1/hboquY2GyMPbpZvjoHGjQjstFRnElf9FLtQTQB2v8VA0fMmOAn
         Ty1pR0CuWj7rqhSmBeQyrYjaEFSFQ5lCIhJWSxAqFKVHw92mq0QZQn1lm1mm7zBq0R7w
         8i0LzfE1gDWyykbg1o7Szy7WTeDEXh34phI8aj8pj75yvhxm3s5mgFQ3Jbue3Np4yG6N
         nkqyEi9wWNPGxWJxQhvkCOaMKm4JD5TUU3Y7RlC/WhZSrmgd2UvmyhmAe0KlYuJYl0nR
         Tw7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=suSCW+i7r8fLZkX8SIzkhSnBqWVbrjIKRYeVO6hPkeY=;
        b=rBwKYmXWXjVira73vWfe+ewk7nj2HqMR0uKb8r5hXDHWzYakFYT0OAPU+UYDHvgAer
         quZT6AIxz8HhsIi6JCYnF6fh2gykKDM5A/SV/bQPobzJlDlydf8R1bfqIR1UKvA7/WF1
         nx/mPDPMl/phG25VeD1ozGSBCq6gI9QEcYhM12X6HWXUyzbaVhnzUPUujOHz9mlEyQ5s
         Ok5vFPTobitW2X/9r/hMjoXY+J7IDpqDF9hwj32goNE2XJWGMBx0GHAGc1cuap4lB5i7
         gBPDv334+PTQTnoeiN5hCtDce+7mpKgNZPQna+T+foVrf24+tECf5gbzMcE4tCkH36rP
         7JgA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jvjNRqGM;
       spf=pass (google.com: domain of 31qpsxqgkagcrfjssnhmlttlqj.htr@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=31qpSXQgKAGcRFJSSNHMLTTLQJ.HTR@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f73.google.com (mail-sor-f73.google.com. [209.85.220.73])
        by mx.google.com with SMTPS id g17sor3968802qki.176.2019.08.13.05.19.34
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 13 Aug 2019 05:19:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of 31qpsxqgkagcrfjssnhmlttlqj.htr@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) client-ip=209.85.220.73;
X-Received: by 2002:a05:620a:1659:: with SMTP id c25mr18463612qko.306.1565698774148;
 Tue, 13 Aug 2019 05:19:34 -0700 (PDT)
Date: Tue, 13 Aug 2019 13:17:04 +0100
In-Reply-To: <20190813121733.52480-1-maennich@google.com>
Message-Id: <20190813121733.52480-8-maennich@google.com>
Mime-Version: 1.0
References: <20180716122125.175792-1-maco@android.com> <20190813121733.52480-1-maennich@google.com>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [usb-storage] [PATCH v2 07/10] modpost: add support for generating
 namespace dependencies
From: "'Matthias Maennich' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: linux-kernel@vger.kernel.org, maco@android.com
Cc: kernel-team@android.com, maennich@google.com, arnd@arndb.de, 
	geert@linux-m68k.org, gregkh@linuxfoundation.org, hpa@zytor.com, 
	jeyu@kernel.org, joel@joelfernandes.org, kstewart@linuxfoundation.org, 
	linux-arch@vger.kernel.org, linux-kbuild@vger.kernel.org, 
	linux-m68k@lists.linux-m68k.org, linux-modules@vger.kernel.org, 
	linux-scsi@vger.kernel.org, linux-usb@vger.kernel.org, 
	lucas.de.marchi@gmail.com, maco@google.com, michal.lkml@markovi.net, 
	mingo@redhat.com, oneukum@suse.com, pombredanne@nexb.com, sam@ravnborg.org, 
	sboyd@codeaurora.org, sspatil@google.com, stern@rowland.harvard.edu, 
	tglx@linutronix.de, usb-storage@lists.one-eyed-alien.net, x86@kernel.org, 
	yamada.masahiro@socionext.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maennich@google.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=jvjNRqGM;       spf=pass
 (google.com: domain of 31qpsxqgkagcrfjssnhmlttlqj.htr@flex--maennich.bounces.google.com
 designates 209.85.220.73 as permitted sender) smtp.mailfrom=31qpSXQgKAGcRFJSSNHMLTTLQJ.HTR@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Matthias Maennich <maennich@google.com>
Reply-To: Matthias Maennich <maennich@google.com>
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
X-Google-Group-Id: 960895140360
List-Post: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/post>,
 <mailto:usb-storage@lists.one-eyed-alien.net>
List-Help: <https://support.google.com/a/lists.one-eyed-alien.net/bin/topic.py?topic=25838>,
 <mailto:usb-storage+help@lists.one-eyed-alien.net>
List-Archive: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/>
List-Subscribe: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>,
 <mailto:usb-storage+subscribe@lists.one-eyed-alien.net>
List-Unsubscribe: <mailto:googlegroups-manage+960895140360+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>

This patch adds an option to modpost to generate a <module>.ns_deps file
per module, containing the namespace dependencies for that module.

E.g. if the linked module my-module.ko would depend on the symbol
myfunc.MY_NS in the namespace MY_NS, the my-module.ns_deps file created
by modpost would contain the entry MY_NS to express the namespace
dependency of my-module imposed by using the symbol myfunc.

These files can subsequently be used by static analysis tools (like
coccinelle scripts) to address issues with missing namespace imports. A
later patch of this series will introduce such a script 'nsdeps' and a
corresponding make target to automatically add missing
MODULE_IMPORT_NS() definitions to the module's sources. For that it uses
the information provided in the generated .ns_deps files.

Co-developed-by: Martijn Coenen <maco@android.com>
Signed-off-by: Martijn Coenen <maco@android.com>
Signed-off-by: Matthias Maennich <maennich@google.com>
---
 scripts/mod/modpost.c | 61 +++++++++++++++++++++++++++++++++++++++----
 scripts/mod/modpost.h |  2 ++
 2 files changed, 58 insertions(+), 5 deletions(-)

diff --git a/scripts/mod/modpost.c b/scripts/mod/modpost.c
index 538bb24ffee3..833a7e1bcbb5 100644
--- a/scripts/mod/modpost.c
+++ b/scripts/mod/modpost.c
@@ -38,6 +38,8 @@ static int sec_mismatch_count = 0;
 static int sec_mismatch_fatal = 0;
 /* ignore missing files */
 static int ignore_missing_files;
+/* write namespace dependencies */
+static int write_namespace_deps;
 
 enum export {
 	export_plain,      export_unused,     export_gpl,
@@ -2176,10 +2178,15 @@ static int check_exports(struct module *mod)
 		else
 			basename = mod->name;
 
-		if (exp->namespace &&
-		    !module_imports_namespace(mod, exp->namespace)) {
-			warn("module %s uses symbol %s from namespace %s, but does not import it.\n",
-			     basename, exp->name, exp->namespace);
+		if (exp->namespace) {
+			add_namespace(&mod->required_namespaces,
+				      exp->namespace);
+
+			if (!write_namespace_deps &&
+			    !module_imports_namespace(mod, exp->namespace)) {
+				warn("module %s uses symbol %s from namespace %s, but does not import it.\n",
+				     basename, exp->name, exp->namespace);
+			}
 		}
 
 		if (!mod->gpl_compatible)
@@ -2481,6 +2488,38 @@ static void write_dump(const char *fname)
 	free(buf.p);
 }
 
+static void write_namespace_deps_files(void)
+{
+	struct module *mod;
+	struct namespace_list *ns;
+	struct buffer ns_deps_buf = {};
+
+	for (mod = modules; mod; mod = mod->next) {
+		char fname[PATH_MAX];
+		const char *basename;
+
+		if (mod->skip)
+			continue;
+
+		ns_deps_buf.pos = 0;
+
+		for (ns = mod->required_namespaces; ns; ns = ns->next)
+			buf_printf(&ns_deps_buf, "%s\n", ns->namespace);
+
+		if (ns_deps_buf.pos == 0)
+			continue;
+
+		basename = strrchr(mod->name, '/');
+		if (basename)
+			basename++;
+		else
+			basename = mod->name;
+
+		sprintf(fname, ".tmp_versions/%s.ns_deps", basename);
+		write_if_changed(&ns_deps_buf, fname);
+	}
+}
+
 struct ext_sym_list {
 	struct ext_sym_list *next;
 	const char *file;
@@ -2497,7 +2536,7 @@ int main(int argc, char **argv)
 	struct ext_sym_list *extsym_iter;
 	struct ext_sym_list *extsym_start = NULL;
 
-	while ((opt = getopt(argc, argv, "i:I:e:mnsT:o:awE")) != -1) {
+	while ((opt = getopt(argc, argv, "i:I:e:mnsT:o:awEd")) != -1) {
 		switch (opt) {
 		case 'i':
 			kernel_read = optarg;
@@ -2538,6 +2577,9 @@ int main(int argc, char **argv)
 		case 'E':
 			sec_mismatch_fatal = 1;
 			break;
+		case 'd':
+			write_namespace_deps = 1;
+			break;
 		default:
 			exit(1);
 		}
@@ -2572,6 +2614,9 @@ int main(int argc, char **argv)
 
 		err |= check_modname_len(mod);
 		err |= check_exports(mod);
+		if (write_namespace_deps)
+			continue;
+
 		add_header(&buf, mod);
 		add_intree_flag(&buf, !external_module);
 		add_retpoline(&buf);
@@ -2584,6 +2629,12 @@ int main(int argc, char **argv)
 		sprintf(fname, "%s.mod.c", mod->name);
 		write_if_changed(&buf, fname);
 	}
+
+	if (write_namespace_deps) {
+		write_namespace_deps_files();
+		return 0;
+	}
+
 	if (dump_write)
 		write_dump(dump_write);
 	if (sec_mismatch_count && sec_mismatch_fatal)
diff --git a/scripts/mod/modpost.h b/scripts/mod/modpost.h
index 9626bf3e7424..92a926d375d2 100644
--- a/scripts/mod/modpost.h
+++ b/scripts/mod/modpost.h
@@ -126,6 +126,8 @@ struct module {
 	struct buffer dev_table_buf;
 	char	     srcversion[25];
 	int is_dot_o;
+	// Required namespace dependencies
+	struct namespace_list *required_namespaces;
 	// Actual imported namespaces
 	struct namespace_list *imported_namespaces;
 };
-- 
2.23.0.rc1.153.gdeed80330f-goog

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190813121733.52480-8-maennich%40google.com.
