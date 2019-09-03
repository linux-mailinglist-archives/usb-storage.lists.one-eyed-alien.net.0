Return-Path: <usb-storage+bncBDMYPB44VAFRBOEDXLVQKGQERZFO5JQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yb1-xb47.google.com (mail-yb1-xb47.google.com [IPv6:2607:f8b0:4864:20::b47])
	by mail.lfdr.de (Postfix) with ESMTPS id 6689DA6C43
	for <lists+usb-storage@lfdr.de>; Tue,  3 Sep 2019 17:07:37 +0200 (CEST)
Received: by mail-yb1-xb47.google.com with SMTP id y12sf5049610ybg.14
        for <lists+usb-storage@lfdr.de>; Tue, 03 Sep 2019 08:07:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567523256; cv=pass;
        d=google.com; s=arc-20160816;
        b=lovVT9sfaxoWwKrQw0nsRkBAofMBDxMdWfCrxag4L96hS5bmP7CYhp9myBppuxMZfV
         xIFDmKBYuuHWdQddUrt25+RluJJLUcqkUTyIjh7jRqo2tynd0pP3Z5p2d9CEm3A5DfkQ
         p7RoYJRlLj/MesENeFXJQ+5jyK1/j6EvGQGzgrwyfFkFtacZonzJX34S2WRuphH+QqoE
         wxh+eMmB4T3sOTvkPRTcPl6hBJ7BsEm6uWJP3omVP4O7Y4M6+9iksEnNcQwn5JXul8ar
         /Psk9P5Nfa0+qlmw3enMmSOOU1p3keolw8ftKfkAtnJfLebJBzrU7wvYvOzvY1y0f2rK
         /H2A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=/W3KZDy9MxNoOlkVUrDgSVIPcD846maCbNaiBjM5uUU=;
        b=T1ayzVu7PT4APsvoDhazgiYa+9IAa2f3OHQiKx+SBS9+MmUzvcLg8ZiO6nqKL+djel
         ZLdw54/P0Fp8qKm1y1CLBYXmMDCaItooztXu3BsS9kKKMv7UIoqEXdkatEUK88pjNpeS
         Kd7SZ+It7qmtgka7/uFqhZpQKP0/2F57O4tqSm3ZA5vtmya7E7Hamm3osYUkkunPau3l
         TcyvNU7I/Ce8ZoF9R9qdSCUT9UgWZxWBGIaVrDWYD7ocMgSQar6zLIUVQhk8Skye7rBf
         jRVo6zOzvHM2Xte3EnejJSMRynPbR8T5yIyjO0+dBgXuCfLeBk8Kn/2UUwJHu92er3gS
         bG9w==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DjpPoCow;
       spf=pass (google.com: domain of 3t4fuxqgkagyqeirrmglksskpi.gsq@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=3t4FuXQgKAGYQEIRRMGLKSSKPI.GSQ@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/W3KZDy9MxNoOlkVUrDgSVIPcD846maCbNaiBjM5uUU=;
        b=JZN7EWZvRiJW0UnkWquyjrrVUHFcbqzeygjvz13A94Lf0EVf0mFBPMXAykaFmKLMxD
         J79K+UGcgU5VmUpGGFULGVBVDfxDBnTYUvt+Z1zTKEoArDgn586p8bv+9Gabk/SXJNtx
         cmJCE3txr/X91q0Rq7hFFuYrOfCyp33B0dBa8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/W3KZDy9MxNoOlkVUrDgSVIPcD846maCbNaiBjM5uUU=;
        b=a9U4nb5NsgIN9HmQj327dAY6NnsQlkwHq3GijmKDrOpoz/d/gy4fSxDEnFnmm8rRm8
         MktybSGaK91PSBQKnqcVkriyFOT5zesS/9z86peGYxZKbyO6nuiBRgg6a+X6jVH43IJ/
         WiTGWtL452GZiYBektYgOHFgRPkUvQUCO8kimp2Ofw56K6MUsJOSkfC/k/2ssHSsVpQj
         OYiBsRIf0of77WCJyz4bwRKqDy72A/94lkkX3BOKQYIOlbNpBkG+IdYC+q/1Mr77szAV
         RWGrl6pH57gi4gN2xzmf5vfen3J3lshgkFTiG7c0KHX9Ene8GImbVdQzJ9QFNEFjyDPo
         YLsg==
X-Gm-Message-State: APjAAAWu1Dvlajj1WuHHNG9GFBwn0zpIfFWb9hMyyCIkokxiYKvm3f8O
	HSSo8K42zK6t/Xnz3OX9T+831Q==
X-Google-Smtp-Source: APXvYqwG7XKSK3EN2EyPXfY1QMOQ5LOfmDE6w902g6CtoSDzo0z1e0yuiaPbwxKDfifycTdLHPirNw==
X-Received: by 2002:a81:b666:: with SMTP id h38mr19563484ywk.315.1567523256238;
        Tue, 03 Sep 2019 08:07:36 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a25:2fcd:: with SMTP id v196ls726555ybv.15.gmail; Tue, 03
 Sep 2019 08:07:35 -0700 (PDT)
X-Received: by 2002:a25:d751:: with SMTP id o78mr26197563ybg.101.1567523255818;
        Tue, 03 Sep 2019 08:07:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567523255; cv=none;
        d=google.com; s=arc-20160816;
        b=z2C1JfDfuxylcXJ6qVVfqEmUl1nGIs9b3Q3VWvvaJKPbDECXDUGiQoKu16l+qyIDdw
         y45ljsRNQGEMOhXq75k2KTXJ2hkOvHG1Uo+AY9S7mO3Mj/HxWOn3JpX4eWh9UUGnOxyz
         KPDNN+v4y/Sesd3tgMceqC5cDG+JftcvzfFEPGbYIrvdESrHGbnpgftn/6bQjwVGWre/
         965zZ/tQeuLJaYtyNPis13d+BPwG+KWG/2sY3COqtcXJbk2rZzKy2A5QDBQehHDiT263
         uZX4E1P4SH8JE87fiCGyjmHQqPaKlHmSvz+8ysTG+DT0q6fNhHiW99xMJEgSgivaxNnj
         gDfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=TomRv8WBRCsnjt12ZHD1+VdCr+4pjb/fkJlpjNFFLG4=;
        b=VThoXcmRdB3ksGeQ1wrbcNxA7dDlPFrf4tXU8C6glSAixwdRKLIrnlwoWWqHiEVL0D
         ANiWDBsuvOFWbB4KfUj1kNSxW73KgSQpaqJ21v6lIr7TaTSC6lg6adfpCFrQ0Nrok29f
         aNVIdwEigu6eGEv3LY4O1AeqYVPZ5mTt26rnw3/uoMa7XrGzj1BH3taW3C+AEej4UkRH
         fx3ZyTuDLxPT46LoTk+3wshwowxpfP9NgF0lnS3forzTsT7FMXvwyGw7bvjEuQAs7c+3
         VAZ0c09Z64OcI4rXOebbLkOpMCAX3vni36cts8IL0K8IPevfJQAfQu7rKL0PIG5gjjhn
         Ze1w==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DjpPoCow;
       spf=pass (google.com: domain of 3t4fuxqgkagyqeirrmglksskpi.gsq@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=3t4FuXQgKAGYQEIRRMGLKSSKPI.GSQ@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f73.google.com (mail-sor-f73.google.com. [209.85.220.73])
        by mx.google.com with SMTPS id 132sor10571918ybs.77.2019.09.03.08.07.35
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 03 Sep 2019 08:07:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3t4fuxqgkagyqeirrmglksskpi.gsq@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) client-ip=209.85.220.73;
X-Received: by 2002:a25:2e4e:: with SMTP id b14mr24713314ybn.242.1567523255286;
 Tue, 03 Sep 2019 08:07:35 -0700 (PDT)
Date: Tue,  3 Sep 2019 16:06:30 +0100
In-Reply-To: <20190903150638.242049-1-maennich@google.com>
Message-Id: <20190903150638.242049-5-maennich@google.com>
Mime-Version: 1.0
References: <20180716122125.175792-1-maco@android.com> <20190903150638.242049-1-maennich@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [usb-storage] [PATCH v4 04/12] modpost: add support for symbol namespaces
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
 header.i=@google.com header.s=20161025 header.b=DjpPoCow;       spf=pass
 (google.com: domain of 3t4fuxqgkagyqeirrmglksskpi.gsq@flex--maennich.bounces.google.com
 designates 209.85.220.73 as permitted sender) smtp.mailfrom=3t4FuXQgKAGYQEIRRMGLKSSKPI.GSQ@flex--maennich.bounces.google.com;
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190903150638.242049-5-maennich%40google.com.
