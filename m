Return-Path: <usb-storage+bncBDMYPB44VAFRBX7LZDVQKGQEXNGW65Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x848.google.com (mail-qt1-x848.google.com [IPv6:2607:f8b0:4864:20::848])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BCE4AB5DE
	for <lists+usb-storage@lfdr.de>; Fri,  6 Sep 2019 12:33:04 +0200 (CEST)
Received: by mail-qt1-x848.google.com with SMTP id o1sf5813861qtp.3
        for <lists+usb-storage@lfdr.de>; Fri, 06 Sep 2019 03:33:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567765983; cv=pass;
        d=google.com; s=arc-20160816;
        b=ChC2vI1APZWhGbysXz2rnzRgSSfyoNACOKF31861S3vS/vNrqJgJyfO5E/eo13EN67
         EsDXwwBwObdSxPZ28rin7z/7c4mnu6x3myzLc3J7jTL2K8Hwniu86TjJwdvgF48qzNyj
         OEcE1xFXpjn2nEYXytJlIKf2hwMM8gf/4gRLpSQ/xZOkMofMpOZrinwwr2JsqEEzDAdK
         vKtncZLWqrE8lY/tcZEa67Y1t3kgkcnViT1Eyv3+7PoGoOjs/EWXUHUOidMCE7zBFjeq
         vlH8+QnjvpkRbXUiSRG+BQwYX7eog/4+Gy8TAfFkM9E0UOPU4QhWD3GF3ot1VBAnq+Vm
         xWTA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=rAeWQhlKVsQQknliS6X8pTiXf7342o4JF6KdZc0yzfk=;
        b=HDdJFCAuCUqvt7F7jO5/nTwMLlhtaOgeJbFs8k+/UqWQLHfMyAkr4OtHGircWSHtiB
         DylcZVDDZnK3jubnxw4JkMjgG5eOszF12NxQeW0DD95yLI2aTiN7KzC1q+yox2Co5ZMA
         G1EhLSP4iGwQvElm9jUOdwex8xdT3/AAm6czLPuhi7MWItBJxjScbQ7wkEjn6s5GpgCd
         zLkNQTeqXyAhUlV3o/TKrOseO2aEknMxBhiyoQQST9RyZdXtTpsidAV3kTyUsjgN84TF
         wETGBlVdHoX1RoVWxfA3+iKQMlDFN50TkTPYy+LiTaH9L90jXbyT8TRKhQARpdLd7v2V
         P9Cw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=I9PXGQZo;
       spf=pass (google.com: domain of 33jvyxqgkaaurfjssnhmlttlqj.htr@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=33jVyXQgKAAUrfjssnhmlttlqj.htr@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rAeWQhlKVsQQknliS6X8pTiXf7342o4JF6KdZc0yzfk=;
        b=EeIS6cAmMQGE2n9PXUtVbMrPnuMMsFquqZPwg7mPLAxim850yCCwJ7EYSsesaC3jjF
         PStl0NT3/rI+/VXJJ4P1xDkuGw+SdMtA7saPk9hxFub3eF2gL5K8yYZXwsS0WTq6A/2W
         iHsVNco32jzkdoJdb3zlzqJPpz13yyWNW6h1g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rAeWQhlKVsQQknliS6X8pTiXf7342o4JF6KdZc0yzfk=;
        b=WZ/KtqfO9PQW4GeAzzJn2WK4B+2AtKRf2JfP9tn2pZiMCqxOJdLBwXktWswHEHaunu
         7U3uG0dD0X5th16UHjd16XGA/YWD21SM7niYt1lqmHi6ZJ6WHE7PNHS1mbLX1eKP8F0t
         t3u/6hPsXLVUfP5gGWQ7PQ5gxhEdtxTr3P6gM+qHZVxuXdSQL+vrgAzqPbXg++pJhVwi
         Um7N1zoUY65nV8szBw3Jtle2f/SQw+n2ZgFb/pkvt5UGxbtkV8TZMv6QuyMy5b4C9M8N
         RqAHl6Ra1u4SdCix+1sMNsrrvnzk9dGD5rYjGGrFqoqEKhZBGld76lzwT9JvWCr4KFk1
         t4CA==
X-Gm-Message-State: APjAAAU0/i1WZeyGw9/QqMJ9KEf97vFMbSApnwvcShoF7NlPyIo7+zHO
	26WLkoRAbptt+LRDS5sN04H46g==
X-Google-Smtp-Source: APXvYqwbvK7w0vyAn2ihjVs+7cz0x36BqUZEmJfo/SlXtVHXmrxiJgh1xe1Cn6EOLHL7Xqtc3BXJ2A==
X-Received: by 2002:a05:6214:70c:: with SMTP id b12mr4885712qvz.87.1567765983072;
        Fri, 06 Sep 2019 03:33:03 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac8:2c55:: with SMTP id e21ls1695273qta.1.gmail; Fri, 06 Sep
 2019 03:33:02 -0700 (PDT)
X-Received: by 2002:ac8:12cc:: with SMTP id b12mr7443439qtj.369.1567765982798;
        Fri, 06 Sep 2019 03:33:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567765982; cv=none;
        d=google.com; s=arc-20160816;
        b=09QR9LCTjte/VMD7Bw34pbFk5jTA2EGrePykjRT3LEY6FH3MwOFhwu9VVLlRQ+L7kx
         7ZEWecuVG563C7Ldc0OprsSjHfWAbOpEvCvTq2f8e9ySp/4/W6oZzdmNFeX18dINJQ+f
         /LP9HSVOCCVRKYX5hsK1LDYRJ9xJ0g13dTvzLXn98gbvXpjUF4vfFxoYUDpmatnd0vSm
         yTGkEGrVFMrpR10f/9Ad7dmOMWcsEt3/BbelUsoF65WJfMshXT6g8N+9rJKMwjt4GTfC
         SPbo2JGLoCqxWsU+YO5Fc6x0Il7y9RZ2V1PsU2DlzQY+ceV9eBVbKlCifrnLyugJ4M+D
         wM8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=RSyx3V/T3+Fb/fBnjK85DcZdNsViLHAQqUGk4FWkZsU=;
        b=w9fl8CYOLZQzIz5gPVram1foSOTc4+IKQWIxQA9GMX1S7AbtTVFiEEbHVpGIkdWsB7
         Cs1rf1UDwsX/XAdb1ZCqgZBbPCrdeQ5+udKI7xbLk51IHzM4ZGCaImV4qxe5eXZyDN2u
         r9IPUTGrMt6xMqGcE5fcCspMiLtIXcixhkGDWpnqpor8HBTmUvgGXm7OAZThopPyjv5d
         pdfacKnsVTecSUyNMXDfdCi4wsSFgPLVIkJL4Gf60lWePOuu73lU1ESvjBguAaJZTdcA
         lrfsfbqNZSIhs6n28AEXCFn9BDZ4eK8KV0j/E0FpEOF5WCgMmvIAWw+G8kkVhttD+Cae
         FAaQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=I9PXGQZo;
       spf=pass (google.com: domain of 33jvyxqgkaaurfjssnhmlttlqj.htr@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=33jVyXQgKAAUrfjssnhmlttlqj.htr@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f73.google.com (mail-sor-f73.google.com. [209.85.220.73])
        by mx.google.com with SMTPS id l6sor7235994qtb.36.2019.09.06.03.33.02
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Fri, 06 Sep 2019 03:33:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of 33jvyxqgkaaurfjssnhmlttlqj.htr@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) client-ip=209.85.220.73;
X-Received: by 2002:ac8:1116:: with SMTP id c22mr8369140qtj.179.1567765982297;
 Fri, 06 Sep 2019 03:33:02 -0700 (PDT)
Date: Fri,  6 Sep 2019 11:32:31 +0100
In-Reply-To: <20190906103235.197072-1-maennich@google.com>
Message-Id: <20190906103235.197072-8-maennich@google.com>
Mime-Version: 1.0
References: <20180716122125.175792-1-maco@android.com> <20190906103235.197072-1-maennich@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [usb-storage] [PATCH v5 07/11] modpost: add support for generating
 namespace dependencies
From: "'Matthias Maennich' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: linux-kernel@vger.kernel.org
Cc: kernel-team@android.com, maennich@google.com, arnd@arndb.de, 
	gregkh@linuxfoundation.org, jeyu@kernel.org, joel@joelfernandes.org, 
	lucas.de.marchi@gmail.com, maco@android.com, sspatil@google.com, 
	will@kernel.org, yamada.masahiro@socionext.com, linux-kbuild@vger.kernel.org, 
	linux-modules@vger.kernel.org, linux-usb@vger.kernel.org, 
	usb-storage@lists.one-eyed-alien.net
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maennich@google.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=I9PXGQZo;       spf=pass
 (google.com: domain of 33jvyxqgkaaurfjssnhmlttlqj.htr@flex--maennich.bounces.google.com
 designates 209.85.220.73 as permitted sender) smtp.mailfrom=33jVyXQgKAAUrfjssnhmlttlqj.htr@flex--maennich.bounces.google.com;
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190906103235.197072-8-maennich%40google.com.
