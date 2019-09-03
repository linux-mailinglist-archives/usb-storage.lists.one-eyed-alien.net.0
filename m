Return-Path: <usb-storage+bncBDMYPB44VAFRBQEDXLVQKGQE7BWUY4I@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x747.google.com (mail-qk1-x747.google.com [IPv6:2607:f8b0:4864:20::747])
	by mail.lfdr.de (Postfix) with ESMTPS id 0062FA6C46
	for <lists+usb-storage@lfdr.de>; Tue,  3 Sep 2019 17:07:46 +0200 (CEST)
Received: by mail-qk1-x747.google.com with SMTP id n135sf19308140qke.23
        for <lists+usb-storage@lfdr.de>; Tue, 03 Sep 2019 08:07:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567523265; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q40wkCItz+IZHjv4n2RCWqBFvQfLbv5vh5QONj7TjG+xNAKgDVFKceqtneikOJk7T0
         BejDT8GrLnCAJrn/DbhY+wWiFNJ61IkJ61qxbcPpXRv8+tzLDmeADynTzq29t3cgzlGJ
         jNn2zpXnJqrIi0KRLn3mq6roc55uF2+WTkj5ivQIDxnkXoeedoOLMXzTc67CYCOZM3qC
         4XoEeR3/szVMpcDuh+A7tXqpq5DE4AKvMFSUq9uEEJHn5YJNR9NQnEmENm/ByHuOD9KX
         T8Pa2IWisPBYP0pmWx6fsfuAfHe239W3fwNl4PFe9xC7LTPWWVcxc39tneAMMs6fc7y5
         tfPw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=m0A/rmiksuVFLr3ofD+MP0cikmlodUL/+L2+9ATFDOo=;
        b=F6a8BA9+fZY4/Zb9oZjTHdU7gGkzFvCIJxuxwohAJfMPw3u5nOl0Do1JBQsODhs3ZP
         jguEoi+ruKltaeUQ3ttNuRRy/AIvrL4sOWBUNSqqAwV6vSHAqdsNUaakC1g3V9itVeTt
         vi6aULUCBslh1Sy9bmftS/vRNwbonY+mfs/Qg8qCiYH189z7nxb+lPb2f8pWWFyaq6nq
         sKpem7aNc9kR4otv1N8payEikFcA82EZknixh1sqexvFglUoDMbxxXEw4Qe1mVn7+p3N
         aOtRXatKU/fL7fbhRBPUtDIFY6snJKBrwNwI8VXjiKv2tquT04Nkbodo/MkoFVvBJ0RD
         U58A==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ldoyE70k;
       spf=pass (google.com: domain of 3wifuxqgkag8znraavputbbtyr.pbz@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=3wIFuXQgKAG8ZNRaaVPUTbbTYR.PbZ@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m0A/rmiksuVFLr3ofD+MP0cikmlodUL/+L2+9ATFDOo=;
        b=EN4InwScY3r44pX1idkAD4ZLBMzMZ0AQEbaHSwzuwU4dSOrIFG425V5fLjMttUddeK
         3ZlR59T4oDZE9QA3QEqE78hkl1BjCyBuTuDt15b2OCwxuqLla0Mg4R4praAXFN8+r2Gp
         YRpYyxovhy/BiRJsY/veHpGR5dFf+ugly0ASw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m0A/rmiksuVFLr3ofD+MP0cikmlodUL/+L2+9ATFDOo=;
        b=ZV/o7drvoirM/QzwHJUjF3T0o14XvrHQ1UHqoCbJ2judla2vS5oBWGjyKlbqFIOKVE
         +SOTIlBBFi0rf0CcszXxb5lJGfkqg1XVRJFyGYhdNJUpiXml4xtHqrqqAGwyGqLLOzMx
         b4KERqTiLaM+Cw8XRfjJ0Iovkqy3VYdBmxrTp6JGaD6XLSVLYYrNaVHLdOSuqsXCub8i
         k7X+1/GhKtWzrIyqxK5AsTzdVISzklwa+GpBICDKSdRhQe/W6o0wy759DiU62OetLdzA
         G79idlSSyJ8ZEErTWR3flg+URl2kuCfLNFLUz/3RKPHDJk+9yZ9wFVOsW7D9f8vaR/jI
         l0+A==
X-Gm-Message-State: APjAAAVSa73cyHpjYoxrLUmfRB8JfVTJ/2iHHZf+nGa3KjRkAuH+CzPn
	3lI03/FRGKZ8JVCBRMSlMIl4MQ==
X-Google-Smtp-Source: APXvYqz/leeClxwbVlenjGQvZo/Ps2irsdMBVl8PZASGDTTeBmw1qDSGoBLrc0ByRFCH/qrkNIFWKQ==
X-Received: by 2002:ac8:1195:: with SMTP id d21mr34256992qtj.164.1567523264970;
        Tue, 03 Sep 2019 08:07:44 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a0c:d0c9:: with SMTP id b9ls1881777qvh.6.gmail; Tue, 03 Sep
 2019 08:07:44 -0700 (PDT)
X-Received: by 2002:a0c:e887:: with SMTP id b7mr11313707qvo.82.1567523264635;
        Tue, 03 Sep 2019 08:07:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567523264; cv=none;
        d=google.com; s=arc-20160816;
        b=aUx5S4Brr0MbAb56OzjI9X6WusW7mzgeEKWY79i99ub4WHazUONdGd6GS2bfahP4VL
         /D5HbIQhoWGENO8Q8yfU+aWX8kaV3+u8WzrfcO52UGm3RBSqg78je9kbFa6CTKzScYGg
         K0ZLUGIWoA4kjpNSOfm86AmlAc3TfRrvTvAqPry84238jEPTYwZQtag4XeI+9IxuHyfi
         xwSvCjM34QQhz29gLU9riZ0t7OGp4q8gKhA0UhrNCrFSWiz32rbGexksnaxzX4bkeQ86
         2AL29K/+uz9MzMJtZC0/2n8V2LGbo3kJBWDFRnw/j7Oyh9fZMkOvGaRtP1FbBuGdE2TF
         HH7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=RSyx3V/T3+Fb/fBnjK85DcZdNsViLHAQqUGk4FWkZsU=;
        b=R7SfQ0DHUY8k0Lx1SRclXJSVGhmbrXaw8qWO0SGW323q7fl/YLjaBZ8opMm6bUQYbc
         aQQGBPBISBBySY6YGXXU0BDG6+Z5ZJOg2qnmP8iT0A3ex/bvYoOpSwUeIoyX5qzKaGcM
         3DWZX7cjtntwcwyy+sQR1vC9Cuhre+mF2/bXALQRIPcWglm/HfrXOBy4Ziqn8Vlnck0K
         pNK2MwaY3a/fDWpMPYWpQiFAu1qHNz6FQzKMfr1UN7v1brz/ZrYM9CxQWpHKn29pWUV7
         QRNT3u9d81Jg81lrHK2NnWh7bzv7Q+CqW1K4d6SvBGj846zKIffO24eUmhV7F3dkK0Uq
         /jUA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ldoyE70k;
       spf=pass (google.com: domain of 3wifuxqgkag8znraavputbbtyr.pbz@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=3wIFuXQgKAG8ZNRaaVPUTbbTYR.PbZ@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f73.google.com (mail-sor-f73.google.com. [209.85.220.73])
        by mx.google.com with SMTPS id 25sor5548120qtd.65.2019.09.03.08.07.44
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 03 Sep 2019 08:07:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3wifuxqgkag8znraavputbbtyr.pbz@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) client-ip=209.85.220.73;
X-Received: by 2002:aed:3c52:: with SMTP id u18mr15781866qte.194.1567523264136;
 Tue, 03 Sep 2019 08:07:44 -0700 (PDT)
Date: Tue,  3 Sep 2019 16:06:33 +0100
In-Reply-To: <20190903150638.242049-1-maennich@google.com>
Message-Id: <20190903150638.242049-8-maennich@google.com>
Mime-Version: 1.0
References: <20180716122125.175792-1-maco@android.com> <20190903150638.242049-1-maennich@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [usb-storage] [PATCH v4 07/12] modpost: add support for generating
 namespace dependencies
From: "'Matthias Maennich' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: linux-kernel@vger.kernel.org
Cc: kernel-team@android.com, maennich@google.com, arnd@arndb.de, 
	gregkh@linuxfoundation.org, jeyu@kernel.org, joel@joelfernandes.org, 
	lucas.de.marchi@gmail.com, maco@android.com, sspatil@google.com, 
	will@kernel.org, yamada.masahiro@socionext.com, linux-kbuild@vger.kernel.org, 
	linux-modules@vger.kernel.org, linux-usb@vger.kernel.org, 
	usb-storage@lists.one-eyed-alien.net, linux-watchdog@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maennich@google.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ldoyE70k;       spf=pass
 (google.com: domain of 3wifuxqgkag8znraavputbbtyr.pbz@flex--maennich.bounces.google.com
 designates 209.85.220.73 as permitted sender) smtp.mailfrom=3wIFuXQgKAG8ZNRaaVPUTbbTYR.PbZ@flex--maennich.bounces.google.com;
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
index 0cbe8717bdb3..0cdb957ae2c3 100644
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
index c2d49afaea1c..be72da25fe7c 100644
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
@@ -2484,6 +2491,31 @@ static void write_dump(const char *fname)
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
@@ -2500,7 +2532,7 @@ int main(int argc, char **argv)
 	struct ext_sym_list *extsym_iter;
 	struct ext_sym_list *extsym_start = NULL;
 
-	while ((opt = getopt(argc, argv, "i:I:e:mnsT:o:awE")) != -1) {
+	while ((opt = getopt(argc, argv, "i:I:e:mnsT:o:awEd")) != -1) {
 		switch (opt) {
 		case 'i':
 			kernel_read = optarg;
@@ -2541,6 +2573,9 @@ int main(int argc, char **argv)
 		case 'E':
 			sec_mismatch_fatal = 1;
 			break;
+		case 'd':
+			write_namespace_deps = 1;
+			break;
 		default:
 			exit(1);
 		}
@@ -2575,6 +2610,9 @@ int main(int argc, char **argv)
 
 		err |= check_modname_len(mod);
 		err |= check_exports(mod);
+		if (write_namespace_deps)
+			continue;
+
 		add_header(&buf, mod);
 		add_intree_flag(&buf, !external_module);
 		add_retpoline(&buf);
@@ -2587,6 +2625,12 @@ int main(int argc, char **argv)
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
2.23.0.187.g17f5b7556c-goog

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190903150638.242049-8-maennich%40google.com.
