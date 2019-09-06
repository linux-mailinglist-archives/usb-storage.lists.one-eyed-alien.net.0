Return-Path: <usb-storage+bncBDMYPB44VAFRBVXLZDVQKGQEV52IT4Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x746.google.com (mail-qk1-x746.google.com [IPv6:2607:f8b0:4864:20::746])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B34FAB5DB
	for <lists+usb-storage@lfdr.de>; Fri,  6 Sep 2019 12:32:56 +0200 (CEST)
Received: by mail-qk1-x746.google.com with SMTP id a6sf3906168qkl.10
        for <lists+usb-storage@lfdr.de>; Fri, 06 Sep 2019 03:32:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567765975; cv=pass;
        d=google.com; s=arc-20160816;
        b=YxiVh2gdR+ZjO2Dt43zsuZW25iZ+lCt8V69lbdAxlpu8RxJ1b3s8NWnHX+l2j0e+MD
         QO9WFFvifqEYThQTLtc46PnyMOYAUACLg3maDURJzDF1vuqVXeZG8lHv0lPD/m+fe9Hh
         L6fMgYFaW7l6NNRZ+PDr+D0Ulhh1cZbOOSm5v5ylJmTqLYL48ISeZ4i7B5sZOWtjsF6v
         9iwUuZ4KjydLNgJsPRxW5IwR/gmFk9rWffkvs5my7ahDHLqnKPfpKe1S8ByADMUVempG
         UsgyaIENrBkNmyjIrc4B/8MAsjmz4zWXaUKvsNW8pSxLJOyCv+HYHhgybdMaMQSXpVdV
         KsWw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=D4M8JKimMJPDEgP1nHyR1Mb1r8z5jLqYQ1MG0O6w038=;
        b=iHk6xdx3oN+Ww9I4zQIYC3G2T1Ncyr1VwMpeAk6HPCr6b0g9GRonC6RNH8Bx41ozWX
         FMJdTCYNkkJNxTIQFJa/XxwhBJ2RSULVgjDQgWmW8kGSvLD+RAruTuyUZj2d/5uztaKg
         jRdhwvAB15xux2poQOL3Ws3hd70DUezxrQgHUWIbHB9kVBbzEjlJO5hsITmPtTYP2vfi
         mu6ay+eLzPVv+mzuDddeXUXqBNbs/krBJ3Jn8FHTR1iHobHIsWAuAeTdF0k96a15drNj
         ONpGwyC9Gc8zcukz4JBCyfaJqcoNKeTBWRARtLnEyMDFM3Rl80em/8BSv9k61xd0AQxD
         sOwA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=I1ZteSFA;
       spf=pass (google.com: domain of 31tvyxqgkapoocgppkejiqqing.eqo@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=31TVyXQgKAPoocgppkejiqqing.eqo@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D4M8JKimMJPDEgP1nHyR1Mb1r8z5jLqYQ1MG0O6w038=;
        b=Y0IY1Q99RU/TjKWxSie5q07LXBd7rJYrWfXDYyLbVtWjeAetlCLQPfq67JL9Mx/AvF
         /j+SXdomRqFDQOJtUJl+pbhFKspeMTbow+r8vVOteeAdZSUpsx8MIG/ugxEirJSlDbna
         arC3jt0vOJSO3GFYZpE3NT/xt8s388TYKw4F4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D4M8JKimMJPDEgP1nHyR1Mb1r8z5jLqYQ1MG0O6w038=;
        b=HlfrPaQOwHkK4UoHz0epL2/ZByZ0WKU/R6d/s+kD+CRbxE0N48mO6Me9Ca1qftc840
         vELkf73oSEJyDbgkaOaHr0rJUAoTgIgp2qmiMvMcG0aWrxr/gLalfrKw8SR7PLEzaHD/
         evV4W2lQKlEpOM0M3mU8DCLk1/IGQd9pF0bQY+8X1a84LFQnkZRY9JBfJ1YyMcq2t0ZH
         WwEJV85eFizV6DzaEdSniSDjM/ZbDkjCEdEl95MjdBBEbuPCNisYF4Egnbaa72mYCZkJ
         FMd77SElhP9FyprNREtlFpHpmcb9918ohFGSdpB+wza+Uj01g+NdLAb4FH7VbNpEVpD+
         /WVw==
X-Gm-Message-State: APjAAAVz3gHpa3Q9jTdUSkKZfE6IXl+adpWKD8QtcVZ4F9F/n9tzFJ3H
	SMAoc+zQGzcPgaJMbNO4FgKP1A==
X-Google-Smtp-Source: APXvYqziV2TpVGlGC6XNaWjex+cTvz6wrw7WP1ZrtEP4dSvlXs/YbVUBZZUurdp85eB9tw8QoPeQvA==
X-Received: by 2002:ac8:fb4:: with SMTP id b49mr8120288qtk.203.1567765974641;
        Fri, 06 Sep 2019 03:32:54 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac8:dcd:: with SMTP id t13ls1680283qti.15.gmail; Fri, 06 Sep
 2019 03:32:54 -0700 (PDT)
X-Received: by 2002:ac8:4a83:: with SMTP id l3mr8354896qtq.157.1567765974353;
        Fri, 06 Sep 2019 03:32:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567765974; cv=none;
        d=google.com; s=arc-20160816;
        b=B5R/qWyRuO45xAXXvKNsRJfG1f9LENx66RJKHWD84M1EueqsI9uW7beCpy9aah6rYs
         XtIlv27GhsZ3JueCfhnvTmP0G9FiXD3kxco0OgErlmBVIkW5ctN8gfqINeCCO2a3FogQ
         f/6ZsIP8MMDxkVw9a2PuwvjP4OLH/Kmbf9eZ6q1C9KIlvF+H6exYVr/Tlp0oMTZPXG38
         zOjJdO3x0h1+Soq/3lJanaXhgQE5SQeZLGQeOjK7wVV6y0HywfDkJjcefnhkwXQ2gKhm
         RxUsN9cd53Nzeboruh+OObH5AImgszQAYuQ7COOnzRoBLxkOazQaDYdfs8ILwDmODg0u
         zVAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=TomRv8WBRCsnjt12ZHD1+VdCr+4pjb/fkJlpjNFFLG4=;
        b=Xka6b92VqSh5HC/69uf2/b8wKO7We+9t5QjLJBzuYisL/VAib/U1S7cUD23Lylcm69
         IdeOXTJorwFTyFWcSdMXYZ/8YKaT/Q8BbKb4uyiq3GUj69l+3VAHKTNKSje23VPZFFK2
         FzZBvFSDE1osibRUjzJP8CPFgjmRrMTuwKGC2G9bTKfKIKQtlJJNiQvwmDeWt75odw/j
         rr8RgevUcUZPsJfim53gLwivqyCMCr+Wc8DXC3vshnaPpzJBq+PDZrNtxsE8Y/J2MY/t
         IrZhdiKTWrUDQY9L2IUpNHjQmhK5j/zDSLIrSZGeZnxHefHMUZUdZun/SpjSs6YVjZbk
         6rig==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=I1ZteSFA;
       spf=pass (google.com: domain of 31tvyxqgkapoocgppkejiqqing.eqo@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=31TVyXQgKAPoocgppkejiqqing.eqo@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f73.google.com (mail-sor-f73.google.com. [209.85.220.73])
        by mx.google.com with SMTPS id 65sor3207499qkf.92.2019.09.06.03.32.54
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Fri, 06 Sep 2019 03:32:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of 31tvyxqgkapoocgppkejiqqing.eqo@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) client-ip=209.85.220.73;
X-Received: by 2002:a37:7e84:: with SMTP id z126mr7276344qkc.448.1567765973885;
 Fri, 06 Sep 2019 03:32:53 -0700 (PDT)
Date: Fri,  6 Sep 2019 11:32:28 +0100
In-Reply-To: <20190906103235.197072-1-maennich@google.com>
Message-Id: <20190906103235.197072-5-maennich@google.com>
Mime-Version: 1.0
References: <20180716122125.175792-1-maco@android.com> <20190906103235.197072-1-maennich@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [usb-storage] [PATCH v5 04/11] modpost: add support for symbol namespaces
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
 header.i=@google.com header.s=20161025 header.b=I1ZteSFA;       spf=pass
 (google.com: domain of 31tvyxqgkapoocgppkejiqqing.eqo@flex--maennich.bounces.google.com
 designates 209.85.220.73 as permitted sender) smtp.mailfrom=31TVyXQgKAPoocgppkejiqqing.eqo@flex--maennich.bounces.google.com;
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

Add support for symbols that are exported into namespaces. For that,
extract any namespace suffix from the symbol name. In addition, emit a
warning whenever a module refers to an exported symbol without
explicitly importing the namespace that it is defined in. This patch
consistently adds the namespace suffix to symbol names exported into
Module.symvers.

Example warning emitted by modpost in case of the above violation:

 WARNING: module ums-usbat uses symbol usb_stor_resume from namespace
 USB_STORAGE, but does not import it.

Co-developed-by: Martijn Coenen <maco@android.com>
Signed-off-by: Martijn Coenen <maco@android.com>
Reviewed-by: Joel Fernandes (Google) <joel@joelfernandes.org>
Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Matthias Maennich <maennich@google.com>
---
 Documentation/kbuild/modules.rst |   7 ++-
 scripts/export_report.pl         |   2 +-
 scripts/mod/modpost.c            | 104 ++++++++++++++++++++++++++-----
 scripts/mod/modpost.h            |   7 +++
 4 files changed, 101 insertions(+), 19 deletions(-)

diff --git a/Documentation/kbuild/modules.rst b/Documentation/kbuild/modules.rst
index 24e763482650..d2ae799237fd 100644
--- a/Documentation/kbuild/modules.rst
+++ b/Documentation/kbuild/modules.rst
@@ -470,9 +470,12 @@ build.
 
 	The syntax of the Module.symvers file is::
 
-		<CRC>	    <Symbol>	       <module>
+	<CRC>       <Symbol>          <Namespace>  <Module>                         <Export Type>
 
-		0x2d036834  scsi_remove_host   drivers/scsi/scsi_mod
+	0xe1cc2a05  usb_stor_suspend  USB_STORAGE  drivers/usb/storage/usb-storage  EXPORT_SYMBOL_GPL
+
+	The fields are separated by tabs and values may be empty (e.g.
+	if no namespace is defined for an exported symbol).
 
 	For a kernel build without CONFIG_MODVERSIONS enabled, the CRC
 	would read 0x00000000.
diff --git a/scripts/export_report.pl b/scripts/export_report.pl
index 7d3030d03a25..548330e8c4e7 100755
--- a/scripts/export_report.pl
+++ b/scripts/export_report.pl
@@ -94,7 +94,7 @@ if (defined $opt{'o'}) {
 #
 while ( <$module_symvers> ) {
 	chomp;
-	my (undef, $symbol, $module, $gpl) = split;
+	my (undef, $symbol, $namespace, $module, $gpl) = split('\t');
 	$SYMBOL { $symbol } =  [ $module , "0" , $symbol, $gpl];
 }
 close($module_symvers);
diff --git a/scripts/mod/modpost.c b/scripts/mod/modpost.c
index f277e116e0eb..c2d49afaea1c 100644
--- a/scripts/mod/modpost.c
+++ b/scripts/mod/modpost.c
@@ -164,6 +164,7 @@ struct symbol {
 	struct module *module;
 	unsigned int crc;
 	int crc_valid;
+	const char *namespace;
 	unsigned int weak:1;
 	unsigned int vmlinux:1;    /* 1 if symbol is defined in vmlinux */
 	unsigned int kernel:1;     /* 1 if symbol is from kernel
@@ -233,6 +234,37 @@ static struct symbol *find_symbol(const char *name)
 	return NULL;
 }
 
+static bool contains_namespace(struct namespace_list *list,
+			       const char *namespace)
+{
+	struct namespace_list *ns_entry;
+
+	for (ns_entry = list; ns_entry != NULL; ns_entry = ns_entry->next)
+		if (strcmp(ns_entry->namespace, namespace) == 0)
+			return true;
+
+	return false;
+}
+
+static void add_namespace(struct namespace_list **list, const char *namespace)
+{
+	struct namespace_list *ns_entry;
+
+	if (!contains_namespace(*list, namespace)) {
+		ns_entry = NOFAIL(malloc(sizeof(struct namespace_list) +
+					 strlen(namespace) + 1));
+		strcpy(ns_entry->namespace, namespace);
+		ns_entry->next = *list;
+		*list = ns_entry;
+	}
+}
+
+static bool module_imports_namespace(struct module *module,
+				     const char *namespace)
+{
+	return contains_namespace(module->imported_namespaces, namespace);
+}
+
 static const struct {
 	const char *str;
 	enum export export;
@@ -312,23 +344,39 @@ static enum export export_from_sec(struct elf_info *elf, unsigned int sec)
 		return export_unknown;
 }
 
+static const char *sym_extract_namespace(const char **symname)
+{
+	size_t n;
+	char *dupsymname;
+
+	n = strcspn(*symname, ".");
+	if (n < strlen(*symname) - 1) {
+		dupsymname = NOFAIL(strdup(*symname));
+		dupsymname[n] = '\0';
+		*symname = dupsymname;
+		return dupsymname + n + 1;
+	}
+
+	return NULL;
+}
+
 /**
  * Add an exported symbol - it may have already been added without a
  * CRC, in this case just update the CRC
  **/
-static struct symbol *sym_add_exported(const char *name, struct module *mod,
-				       enum export export)
+static struct symbol *sym_add_exported(const char *name, const char *namespace,
+				       struct module *mod, enum export export)
 {
 	struct symbol *s = find_symbol(name);
 
 	if (!s) {
 		s = new_symbol(name, mod, export);
+		s->namespace = namespace;
 	} else {
 		if (!s->preloaded) {
-			warn("%s: '%s' exported twice. Previous export "
-			     "was in %s%s\n", mod->name, name,
-			     s->module->name,
-			     is_vmlinux(s->module->name) ?"":".ko");
+			warn("%s: '%s' exported twice. Previous export was in %s%s\n",
+			     mod->name, name, s->module->name,
+			     is_vmlinux(s->module->name) ? "" : ".ko");
 		} else {
 			/* In case Module.symvers was out of date */
 			s->module = mod;
@@ -620,6 +668,7 @@ static void handle_modversions(struct module *mod, struct elf_info *info,
 	unsigned int crc;
 	enum export export;
 	bool is_crc = false;
+	const char *name, *namespace;
 
 	if ((!is_vmlinux(mod->name) || mod->is_dot_o) &&
 	    strstarts(symname, "__ksymtab"))
@@ -691,8 +740,9 @@ static void handle_modversions(struct module *mod, struct elf_info *info,
 	default:
 		/* All exported symbols */
 		if (strstarts(symname, "__ksymtab_")) {
-			sym_add_exported(symname + strlen("__ksymtab_"), mod,
-					export);
+			name = symname + strlen("__ksymtab_");
+			namespace = sym_extract_namespace(&name);
+			sym_add_exported(name, namespace, mod, export);
 		}
 		if (strcmp(symname, "init_module") == 0)
 			mod->has_init = 1;
@@ -1943,6 +1993,7 @@ static void read_symbols(const char *modname)
 	const char *symname;
 	char *version;
 	char *license;
+	char *namespace;
 	struct module *mod;
 	struct elf_info info = { };
 	Elf_Sym *sym;
@@ -1974,6 +2025,12 @@ static void read_symbols(const char *modname)
 		license = get_next_modinfo(&info, "license", license);
 	}
 
+	namespace = get_modinfo(&info, "import_ns");
+	while (namespace) {
+		add_namespace(&mod->imported_namespaces, namespace);
+		namespace = get_next_modinfo(&info, "import_ns", namespace);
+	}
+
 	for (sym = info.symtab_start; sym < info.symtab_stop; sym++) {
 		symname = remove_dot(info.strtab + sym->st_name);
 
@@ -2118,6 +2175,13 @@ static int check_exports(struct module *mod)
 			basename++;
 		else
 			basename = mod->name;
+
+		if (exp->namespace &&
+		    !module_imports_namespace(mod, exp->namespace)) {
+			warn("module %s uses symbol %s from namespace %s, but does not import it.\n",
+			     basename, exp->name, exp->namespace);
+		}
+
 		if (!mod->gpl_compatible)
 			check_for_gpl_usage(exp->export, basename, exp->name);
 		check_for_unused(exp->export, basename, exp->name);
@@ -2341,7 +2405,7 @@ static void read_dump(const char *fname, unsigned int kernel)
 		return;
 
 	while ((line = get_next_line(&pos, file, size))) {
-		char *symname, *modname, *d, *export, *end;
+		char *symname, *namespace, *modname, *d, *export, *end;
 		unsigned int crc;
 		struct module *mod;
 		struct symbol *s;
@@ -2349,7 +2413,10 @@ static void read_dump(const char *fname, unsigned int kernel)
 		if (!(symname = strchr(line, '\t')))
 			goto fail;
 		*symname++ = '\0';
-		if (!(modname = strchr(symname, '\t')))
+		if (!(namespace = strchr(symname, '\t')))
+			goto fail;
+		*namespace++ = '\0';
+		if (!(modname = strchr(namespace, '\t')))
 			goto fail;
 		*modname++ = '\0';
 		if ((export = strchr(modname, '\t')) != NULL)
@@ -2366,7 +2433,8 @@ static void read_dump(const char *fname, unsigned int kernel)
 			mod = new_module(modname);
 			mod->skip = 1;
 		}
-		s = sym_add_exported(symname, mod, export_no(export));
+		s = sym_add_exported(symname, namespace, mod,
+				     export_no(export));
 		s->kernel    = kernel;
 		s->preloaded = 1;
 		sym_update_crc(symname, mod, crc, export_no(export));
@@ -2395,16 +2463,20 @@ static void write_dump(const char *fname)
 {
 	struct buffer buf = { };
 	struct symbol *symbol;
+	const char *namespace;
 	int n;
 
 	for (n = 0; n < SYMBOL_HASH_SIZE ; n++) {
 		symbol = symbolhash[n];
 		while (symbol) {
-			if (dump_sym(symbol))
-				buf_printf(&buf, "0x%08x\t%s\t%s\t%s\n",
-					symbol->crc, symbol->name,
-					symbol->module->name,
-					export_str(symbol->export));
+			if (dump_sym(symbol)) {
+				namespace = symbol->namespace;
+				buf_printf(&buf, "0x%08x\t%s\t%s\t%s\t%s\n",
+					   symbol->crc, symbol->name,
+					   namespace ? namespace : "",
+					   symbol->module->name,
+					   export_str(symbol->export));
+			}
 			symbol = symbol->next;
 		}
 	}
diff --git a/scripts/mod/modpost.h b/scripts/mod/modpost.h
index 8453d6ac2f77..9626bf3e7424 100644
--- a/scripts/mod/modpost.h
+++ b/scripts/mod/modpost.h
@@ -109,6 +109,11 @@ buf_printf(struct buffer *buf, const char *fmt, ...);
 void
 buf_write(struct buffer *buf, const char *s, int len);
 
+struct namespace_list {
+	struct namespace_list *next;
+	char namespace[0];
+};
+
 struct module {
 	struct module *next;
 	const char *name;
@@ -121,6 +126,8 @@ struct module {
 	struct buffer dev_table_buf;
 	char	     srcversion[25];
 	int is_dot_o;
+	// Actual imported namespaces
+	struct namespace_list *imported_namespaces;
 };
 
 struct elf_info {
-- 
2.23.0.187.g17f5b7556c-goog

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190906103235.197072-5-maennich%40google.com.
