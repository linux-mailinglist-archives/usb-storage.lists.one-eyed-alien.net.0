Return-Path: <usb-storage+bncBDMYPB44VAFRB67B6TVAKGQERMXPRZA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x846.google.com (mail-qt1-x846.google.com [IPv6:2607:f8b0:4864:20::846])
	by mail.lfdr.de (Postfix) with ESMTPS id E61D797863
	for <lists+usb-storage@lfdr.de>; Wed, 21 Aug 2019 13:54:36 +0200 (CEST)
Received: by mail-qt1-x846.google.com with SMTP id z15sf2331847qtq.6
        for <lists+usb-storage@lfdr.de>; Wed, 21 Aug 2019 04:54:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566388476; cv=pass;
        d=google.com; s=arc-20160816;
        b=DdeWDUBT8FGHtHlBkc/nA6ejLHdl+eq51FLmWeXrX8Y76WpNIHVM+r0I60yf4/eZ5U
         QDiS46/w9NePHLpCY3Ws61VPtIWSuudI/7vJZ46MkZ6mg1HOZj/X6z+t9P+eI+m7iAE0
         dX4GjuvLyUIUxBINNOIVqXHuSnFWQYbA3p2alQL5ubOZ/t+7YvBODZup5udFDfRL4ciS
         0FwiJ33qZEbCxBTLv1fQe1ffaCY9+MhE3aZKyhiQcSqYbVmtZNm94aWj2WBm76J9gxCX
         5+ytNLXpOSKwkley4OZxKIKFpCvKbLYPY9KgDSp1O2VY1Etq1VEVkyOLQsxtnig+dmCv
         JusA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=sOpMQS4bW4XDTD+MTMzExYL93COxlVLy+9JMDhUyJLA=;
        b=F/ez3z2wXC6kAxoqEeQfsqMibufmOFF2/ouCIKe+2TiXOgQNzv/NBGlWGVscGQ+eh+
         k38Qe2ZAbEq0zzEWFer/b7Gc+LebjCFfompiYw9qcznwjoVfFihaRlcoJTMi1T0YVX9F
         She7xlR4wWkODZIZ1bFlWkYvRJS3R2YeXMduwIycs/Fi4QpiV03tC4j3b5PTllGv9/3V
         iVPqtzwRf9LMZ69xcVQMcNXD65s/bdehyQcq6TXnv5DwUZ9VH1yKilzzPy/VPhOThmNl
         Xz6BVPwon/eQ+D9DDmy3DClYdKYEw3E7VV2njjmfASdX9kcdfOWt5QJ2jCfqKj8KEVrm
         6JeQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ofPA9IRi;
       spf=pass (google.com: domain of 3-jbdxqgkamethluupjonvvnsl.jvt@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=3-jBdXQgKAMEthluupjonvvnsl.jvt@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sOpMQS4bW4XDTD+MTMzExYL93COxlVLy+9JMDhUyJLA=;
        b=ACAOyNcCIXI2xCjyAQAQUeVv6hrlwIAM21FP+9XW2Sc4jLdrH1GabaWHL1t2sSyez5
         FxWnnPiWdsWmz09/35uKwQV358ncrTBpcoWU9M4xSPgBBY8yFimox2bkpQlxtfGLN5zu
         zrZ88rlfkKAcBSUDiY6u4xTXRxGFhIhtyBbJg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sOpMQS4bW4XDTD+MTMzExYL93COxlVLy+9JMDhUyJLA=;
        b=LYa+5v5kNrFpRNpzxrzbplxLnzLN3cuS0t5vIjCOMDvPNI7G4bx0xb1roXe7PDSMkc
         tPNdXnX4zrB+Q4TfiEAuscTqlG4ujlZ6/Hc4CeJ1Jcma6hXKrwOVFvbCPrLYI99F5QNG
         BioZxyg1NUtEjl6oDGANkjLgJD3Oyhw2+rOFdIy7oZVyiVZyZNcDgowr/dcE9RN5ypNh
         tkzEMK+WBhvUbxduzl5itRZ1CXk/6kgjAYUAKARcToDn5CDFHyx0kvJiHHhcEnh+9oer
         uXU6onx19nPxEeYOgfzAiEq4wS+jQ5kVqmqqjQt/ni9U62mbGuV5p6DeDGqKPXKlZxoQ
         aHvA==
X-Gm-Message-State: APjAAAUDK439IcUml/VVP2v8NWeAEWFFgrBnmcDxCMEsOfcIstBNPz9S
	bPa5ihfYhi+FY60i5qnaWVSwPA==
X-Google-Smtp-Source: APXvYqwKavYv7OiidzxwMdlExIlcxrXgn65rfTiE959GfZ9JqArRL3DTDY6PMxXE36ZQXkt8VaWXnQ==
X-Received: by 2002:a37:9ac9:: with SMTP id c192mr29401648qke.334.1566388475912;
        Wed, 21 Aug 2019 04:54:35 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a37:4c8c:: with SMTP id z134ls381700qka.13.gmail; Wed, 21
 Aug 2019 04:54:35 -0700 (PDT)
X-Received: by 2002:a37:a06:: with SMTP id 6mr30515540qkk.185.1566388475625;
        Wed, 21 Aug 2019 04:54:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566388475; cv=none;
        d=google.com; s=arc-20160816;
        b=hG7QTVGOPcUSE3Gwu8rN1SfbgdfHe78dA5Gsv9lGOsUfX91jD82knNrqpLJAuvzBgO
         CMd17sAf8LOWjNFFDaWE5jKQCHwqybjIynj+HZ2mOkGY9wlxzfzS04zLkD10sxB3UyWE
         LacTAAjYeZ0wqpCTtqD41ykLEUANrOqseI+ho3LBCnYoocMykbiqhbV9oz2IvASXBEz8
         BP9WTk29drpdPc71+mlZ6kA0JTvgUxYTq1MGp9yMXLKLFdS7AXzTcjIlupDlyQ41cy2D
         n+Pn4lFlo3FqYW1yhx4W+w8Z0miA7jUXL3KYstmAMedepYwnUAqk62OwnzVhFG8N9Wia
         KYVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=5nLAsIhJbjXo3VLybDaau5r86S2zgpwtcdZcq2nr7TM=;
        b=s3tIHa/sjUhmrWRDGIxPPj9XoDp5zyNylgb25BVhMFpuNBqqN4h444Fymn0Uag9k+R
         JjYvKV3S3sWc3TfrPL4zc3PANRxAbjWc0jr5CIqOs8Ot43HGWJ9nJIWbKo3nO+Q+e4EV
         eHMHyC3h3zqMm5viPJm565sacrM1nKHcb+drkXzkAhG+OEhIS5XfRtJFnJHRl4YDwUW5
         LvPOPaUHnIkqqfLR6NirIKAqmcnXBGvgaiLLhR/4VcFDb9byO2xh/4VzkoYAkr5qO4Xu
         t3PCcsoR9112brq+v3+/mxGwOgXeXSkWZSFQ4dMtOtEVPVNY5t0YXVXLYVt8O+jbss/3
         iErA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ofPA9IRi;
       spf=pass (google.com: domain of 3-jbdxqgkamethluupjonvvnsl.jvt@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=3-jBdXQgKAMEthluupjonvvnsl.jvt@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f73.google.com (mail-sor-f73.google.com. [209.85.220.73])
        by mx.google.com with SMTPS id f20sor17590870qvf.9.2019.08.21.04.54.35
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 21 Aug 2019 04:54:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3-jbdxqgkamethluupjonvvnsl.jvt@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) client-ip=209.85.220.73;
X-Received: by 2002:a0c:b209:: with SMTP id x9mr7843206qvd.217.1566388474954;
 Wed, 21 Aug 2019 04:54:34 -0700 (PDT)
Date: Wed, 21 Aug 2019 12:49:22 +0100
In-Reply-To: <20190821114955.12788-1-maennich@google.com>
Message-Id: <20190821114955.12788-8-maennich@google.com>
Mime-Version: 1.0
References: <20190813121733.52480-1-maennich@google.com> <20190821114955.12788-1-maennich@google.com>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [usb-storage] [PATCH v3 07/11] modpost: add support for generating
 namespace dependencies
From: "'Matthias Maennich' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: linux-kernel@vger.kernel.org
Cc: kernel-team@android.com, maennich@google.com, arnd@arndb.de, 
	geert@linux-m68k.org, gregkh@linuxfoundation.org, hpa@zytor.com, 
	jeyu@kernel.org, joel@joelfernandes.org, kstewart@linuxfoundation.org, 
	linux-arch@vger.kernel.org, linux-kbuild@vger.kernel.org, 
	linux-m68k@lists.linux-m68k.org, linux-modules@vger.kernel.org, 
	linux-scsi@vger.kernel.org, linux-usb@vger.kernel.org, 
	lucas.de.marchi@gmail.com, maco@android.com, maco@google.com, 
	michal.lkml@markovi.net, mingo@redhat.com, oneukum@suse.com, 
	pombredanne@nexb.com, sam@ravnborg.org, sspatil@google.com, 
	stern@rowland.harvard.edu, tglx@linutronix.de, 
	usb-storage@lists.one-eyed-alien.net, x86@kernel.org, 
	yamada.masahiro@socionext.com, Jani Nikula <jani.nikula@intel.com>, 
	Rob Herring <robh@kernel.org>, Toru Komatsu <k0ma@utam0k.jp>, 
	Alexey Gladkov <gladkov.alexey@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maennich@google.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ofPA9IRi;       spf=pass
 (google.com: domain of 3-jbdxqgkamethluupjonvvnsl.jvt@flex--maennich.bounces.google.com
 designates 209.85.220.73 as permitted sender) smtp.mailfrom=3-jBdXQgKAMEthluupjonvvnsl.jvt@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Matthias Maennich <maennich@google.com>
Reply-To: Matthias Maennich <maennich@google.com>
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
X-Spam-Checked-In-Group: usb-storage@lists.one-eyed-alien.net
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
Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Matthias Maennich <maennich@google.com>
---
 .gitignore            |  1 +
 Makefile              |  2 +-
 scripts/mod/modpost.c | 54 +++++++++++++++++++++++++++++++++++++++----
 scripts/mod/modpost.h |  2 ++
 4 files changed, 53 insertions(+), 6 deletions(-)

diff --git a/.gitignore b/.gitignore
index 2030c7a4d2f8..9ee63aa2a3fb 100644
--- a/.gitignore
+++ b/.gitignore
@@ -32,6 +32,7 @@
 *.lzo
 *.mod
 *.mod.c
+*.ns_deps
 *.o
 *.o.*
 *.order
diff --git a/Makefile b/Makefile
index 9fa18613566f..a89870188c09 100644
--- a/Makefile
+++ b/Makefile
@@ -1669,7 +1669,7 @@ clean: $(clean-dirs)
 		-o -name '*.ko.*' \
 		-o -name '*.dtb' -o -name '*.dtb.S' -o -name '*.dt.yaml' \
 		-o -name '*.dwo' -o -name '*.lst' \
-		-o -name '*.su' -o -name '*.mod' \
+		-o -name '*.su' -o -name '*.mod' -o -name '*.ns_deps' \
 		-o -name '.*.d' -o -name '.*.tmp' -o -name '*.mod.c' \
 		-o -name '*.lex.c' -o -name '*.tab.[ch]' \
 		-o -name '*.asn1.[ch]' \
diff --git a/scripts/mod/modpost.c b/scripts/mod/modpost.c
index 538bb24ffee3..81eeec063709 100644
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
@@ -2481,6 +2488,31 @@ static void write_dump(const char *fname)
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
+		sprintf(fname, "%s.ns_deps", mod->name);
+		write_if_changed(&ns_deps_buf, fname);
+	}
+}
+
 struct ext_sym_list {
 	struct ext_sym_list *next;
 	const char *file;
@@ -2497,7 +2529,7 @@ int main(int argc, char **argv)
 	struct ext_sym_list *extsym_iter;
 	struct ext_sym_list *extsym_start = NULL;
 
-	while ((opt = getopt(argc, argv, "i:I:e:mnsT:o:awE")) != -1) {
+	while ((opt = getopt(argc, argv, "i:I:e:mnsT:o:awEd")) != -1) {
 		switch (opt) {
 		case 'i':
 			kernel_read = optarg;
@@ -2538,6 +2570,9 @@ int main(int argc, char **argv)
 		case 'E':
 			sec_mismatch_fatal = 1;
 			break;
+		case 'd':
+			write_namespace_deps = 1;
+			break;
 		default:
 			exit(1);
 		}
@@ -2572,6 +2607,9 @@ int main(int argc, char **argv)
 
 		err |= check_modname_len(mod);
 		err |= check_exports(mod);
+		if (write_namespace_deps)
+			continue;
+
 		add_header(&buf, mod);
 		add_intree_flag(&buf, !external_module);
 		add_retpoline(&buf);
@@ -2584,6 +2622,12 @@ int main(int argc, char **argv)
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190821114955.12788-8-maennich%40google.com.
