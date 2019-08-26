Return-Path: <usb-storage+bncBD45FSE2XIORBHEOSDVQKGQE3Q6MTXY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x545.google.com (mail-pg1-x545.google.com [IPv6:2607:f8b0:4864:20::545])
	by mail.lfdr.de (Postfix) with ESMTPS id 13BA99D3E4
	for <lists+usb-storage@lfdr.de>; Mon, 26 Aug 2019 18:21:50 +0200 (CEST)
Received: by mail-pg1-x545.google.com with SMTP id d19sf10036653pgh.3
        for <lists+usb-storage@lfdr.de>; Mon, 26 Aug 2019 09:21:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566836508; cv=pass;
        d=google.com; s=arc-20160816;
        b=hX3Kcr7zWUHnA2J9IXcBtzEfprdKj5sct7HiYfdEH6Q/HfmQhobdRgaeW7O+jGbPBW
         CC8R5kZ3bPodokOBOsHSdc197O8gxit2aiUPukwPODGIT3yPvftBPJpX7G1BlBt6R4IE
         QtoeLfqSe1nUGP408qn80OblRsrYIHmBUfNGp90rkBuIHMUCF/KxjeK8PqcB9eE0srSJ
         CJJsTVjDDU2lejn9GBP1kn3Yhy7HSx3welVbklnH2PsuYwo9qpyUiaXk3X77Yeb2Drpt
         47tNddOnDRxjVDdtcxZoJgTDGz6HM14hsLJj2GkRDxFMBAR41mt+wl/VBbt0Zyvk5U+1
         ZE0g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=RSfTx+E5yfqkdMl+B9JMjKwTuVexCNoV+LQe0yuYyqw=;
        b=mRdchfARLdiiSQ8Q9xKsmCJvoQjRB3Kj0NBXlVP0fIM2f//eJx9A+5R+C2csDbdvQf
         8Tz7tR5TNmhEA4HEM+PbMxVxBz2oKMwuFRuEuDDTk593tyWJXvmHcrcAhQROhSTLyXSd
         xS7MIm3zQxpGTLcOAHmuAUUbtKXtEA1Yud2S5fjfgWuifqe6orkMrAtrgZLp0HPy89cD
         YTeAWe8nCRAJ+k8/feupV9g6/pdujs8Cp17LJVb8PYHNK4YeY7jIaY6THQydaam1+I0e
         BR2nWjojj2AuS0MsGyvlnDS2aHQoo87YEGknz4imQmD3+NUqsWAlCtkXUqT40+61BTaM
         5qNg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=pnCkPbWF;
       spf=pass (google.com: domain of jeyu@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jeyu@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RSfTx+E5yfqkdMl+B9JMjKwTuVexCNoV+LQe0yuYyqw=;
        b=Llejucg2NRCHrIawQ7uoLgQpeD4iEALQdcXgihLLvH2WSR4f7UxLqyteYzdO2Aovfy
         rIYZym8hHhqSwlMgil68QQi3yO2+tNxKogAONrUeoRCvdNKXu0Y3XvKijgDS3O2XEMb0
         4Upfj/xJI0gVq+jp6Ogi0QWwk5mRFnhd8txnc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=RSfTx+E5yfqkdMl+B9JMjKwTuVexCNoV+LQe0yuYyqw=;
        b=PzsXd2bVKZJJrP2RT5sMmA+P/onK08FBvSUlcKDWm+QGtaO0vtcpUZYQ8JWVYiCQWn
         cz+RoWdXeJpC1AbyLuXHULsVFbpl7qkLM05DYxp1p8cXnTaVhY++IZUX7tbR5uBD88SZ
         t7vJ0NFOylERK/p5fQX3HU43kbmMDrQhAa+v975icf+mKnlMrDyS+FD7LWcmaqafIKFW
         Fs5FZx1/zPktSBzmZL/5PBwfBUTSvBAPzn5LBSsVyptTyI5GVEkstehf32Z1Bqz85ypv
         jVR8mmiVOfdP0ccs7Bph2peqwfmo6eF6flaIDwl8gvf8bo+UaswNf04FWrYDO578RFUw
         OOWw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAXKW0Z0dxKcJstMmUoAJSs7dc6Y/OGs5YZzA2nkrlceNFJi4WVD
	Xt5zrrpenI2pGlyD/j90Am/e9Q==
X-Google-Smtp-Source: APXvYqyZwby+SQ5qKm+jt4V2Q+w7p/yQ9IDUIehZTSu37wKmWrRH1ajc9IAd5wZTE0wiSNfx4yRMKQ==
X-Received: by 2002:a63:505a:: with SMTP id q26mr16719954pgl.18.1566836508205;
        Mon, 26 Aug 2019 09:21:48 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a65:47ca:: with SMTP id f10ls3766903pgs.13.gmail; Mon, 26
 Aug 2019 09:21:47 -0700 (PDT)
X-Received: by 2002:a63:290:: with SMTP id 138mr15711696pgc.402.1566836507660;
        Mon, 26 Aug 2019 09:21:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566836507; cv=none;
        d=google.com; s=arc-20160816;
        b=dzhXklyRcU2/Pi8KZbBSjX6ysqTyRB1EHjRW9fuiFzYeb7pooEqPYfNqkiNqT6mUG/
         uWWK3YYQlQE8Gk+vNpr5Z9RR72ZO33DnjgbynwRfu3DN0KRSmLMq/boptyzx6/GMzaO0
         fXQGBAkGJUgVjxxsKEPv/oxfvdVTIe/93/mAfjzV24wTAOOp5xHE3yauQvEUVGlKa272
         EsntqSWQZ2cl/RS1WTDoy8V502o2ouFGYWrixndLvlkHBtCa+fkfGBO++mSwsgRjohia
         +UY3jBvzewVs3KSkNJ65pckCQyhMGwaKyVKdJWi+Zy6DBc4qLYkGjPytIBFSduGEuRxV
         lmSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=z/mUUYeI2aSir35v7FFQ9S1xpsdng8abarXI6RO85Bw=;
        b=akMBasZuoVoLhET+h8MaTCxqsNEU5XDMSO3S+3CbgztKcbsk6VTghFLGBpw+aqitWo
         R9cjVSIb+xb83kPc1pXyRmMzS0VJ0de5TKRk/ToyiwComQSrhKuCHjGrGNGXxCH0m2gE
         NdYVwz4JUsZYzrQWKx68yVIO2RKF3UromieOO76jk79MAA2ZGwoMEtB4mutWjB6Wc5BG
         nrDNTw/njP5u/wPlLWWd0ixsEmwqbsnLN4irJGDXBgjuinNeh/d500c44Qxl+eXm4bo2
         X0luU+jZU/aIHGHbitz8s9ubrnffh5tayioSoXgx+sduC3hEcyjkGvOwslqlLBsoMA/k
         Z/cw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=pnCkPbWF;
       spf=pass (google.com: domain of jeyu@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jeyu@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id j6si10614331pfi.240.2019.08.26.09.21.47
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Aug 2019 09:21:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of jeyu@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from linux-8ccs (unknown [92.117.241.205])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 1927E2173E;
	Mon, 26 Aug 2019 16:21:41 +0000 (UTC)
Date: Mon, 26 Aug 2019 18:21:38 +0200
From: Jessica Yu <jeyu@kernel.org>
To: Matthias Maennich <maennich@google.com>
Cc: linux-kernel@vger.kernel.org, kernel-team@android.com, arnd@arndb.de,
	geert@linux-m68k.org, gregkh@linuxfoundation.org, hpa@zytor.com,
	joel@joelfernandes.org, kstewart@linuxfoundation.org,
	linux-arch@vger.kernel.org, linux-kbuild@vger.kernel.org,
	linux-m68k@lists.linux-m68k.org, linux-modules@vger.kernel.org,
	linux-scsi@vger.kernel.org, linux-usb@vger.kernel.org,
	lucas.de.marchi@gmail.com, maco@android.com, maco@google.com,
	michal.lkml@markovi.net, mingo@redhat.com, oneukum@suse.com,
	pombredanne@nexb.com, sam@ravnborg.org, sspatil@google.com,
	stern@rowland.harvard.edu, tglx@linutronix.de,
	usb-storage@lists.one-eyed-alien.net, x86@kernel.org,
	yamada.masahiro@socionext.com
Subject: [usb-storage] Re: [PATCH v3 04/11] modpost: add support for symbol namespaces
Message-ID: <20190826162138.GA31739@linux-8ccs>
References: <20190813121733.52480-1-maennich@google.com>
 <20190821114955.12788-1-maennich@google.com>
 <20190821114955.12788-5-maennich@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20190821114955.12788-5-maennich@google.com>
X-OS: Linux linux-8ccs 4.12.14-lp150.12.61-default x86_64
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: jeyu@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=pnCkPbWF;       spf=pass
 (google.com: domain of jeyu@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=jeyu@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

+++ Matthias Maennich [21/08/19 12:49 +0100]:
>Add support for symbols that are exported into namespaces. For that,
>extract any namespace suffix from the symbol name. In addition, emit a
>warning whenever a module refers to an exported symbol without
>explicitly importing the namespace that it is defined in. This patch
>consistently adds the namespace suffix to symbol names exported into
>Module.symvers.
>
>Example warning emitted by modpost in case of the above violation:
>
> WARNING: module ums-usbat uses symbol usb_stor_resume from namespace
> USB_STORAGE, but does not import it.
>
>Co-developed-by: Martijn Coenen <maco@android.com>
>Signed-off-by: Martijn Coenen <maco@android.com>
>Reviewed-by: Joel Fernandes (Google) <joel@joelfernandes.org>
>Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>Signed-off-by: Matthias Maennich <maennich@google.com>
>---
> scripts/mod/modpost.c | 91 +++++++++++++++++++++++++++++++++++++------
> scripts/mod/modpost.h |  7 ++++
> 2 files changed, 87 insertions(+), 11 deletions(-)
>
>diff --git a/scripts/mod/modpost.c b/scripts/mod/modpost.c
>index f277e116e0eb..538bb24ffee3 100644
>--- a/scripts/mod/modpost.c
>+++ b/scripts/mod/modpost.c
>@@ -164,6 +164,7 @@ struct symbol {
> 	struct module *module;
> 	unsigned int crc;
> 	int crc_valid;
>+	const char *namespace;
> 	unsigned int weak:1;
> 	unsigned int vmlinux:1;    /* 1 if symbol is defined in vmlinux */
> 	unsigned int kernel:1;     /* 1 if symbol is from kernel
>@@ -233,6 +234,37 @@ static struct symbol *find_symbol(const char *name)
> 	return NULL;
> }
>
>+static bool contains_namespace(struct namespace_list *list,
>+			       const char *namespace)
>+{
>+	struct namespace_list *ns_entry;
>+
>+	for (ns_entry = list; ns_entry != NULL; ns_entry = ns_entry->next)
>+		if (strcmp(ns_entry->namespace, namespace) == 0)
>+			return true;
>+
>+	return false;
>+}
>+
>+static void add_namespace(struct namespace_list **list, const char *namespace)
>+{
>+	struct namespace_list *ns_entry;
>+
>+	if (!contains_namespace(*list, namespace)) {
>+		ns_entry = NOFAIL(malloc(sizeof(struct namespace_list) +
>+					 strlen(namespace) + 1));
>+		strcpy(ns_entry->namespace, namespace);
>+		ns_entry->next = *list;
>+		*list = ns_entry;
>+	}
>+}
>+
>+static bool module_imports_namespace(struct module *module,
>+				     const char *namespace)
>+{
>+	return contains_namespace(module->imported_namespaces, namespace);
>+}
>+
> static const struct {
> 	const char *str;
> 	enum export export;
>@@ -312,6 +344,22 @@ static enum export export_from_sec(struct elf_info *elf, unsigned int sec)
> 		return export_unknown;
> }
>
>+static const char *sym_extract_namespace(const char **symname)
>+{
>+	size_t n;
>+	char *dupsymname;
>+
>+	n = strcspn(*symname, ".");
>+	if (n < strlen(*symname) - 1) {
>+		dupsymname = NOFAIL(strdup(*symname));
>+		dupsymname[n] = '\0';
>+		*symname = dupsymname;
>+		return dupsymname + n + 1;
>+	}
>+
>+	return NULL;
>+}
>+
> /**
>  * Add an exported symbol - it may have already been added without a
>  * CRC, in this case just update the CRC
>@@ -319,16 +367,18 @@ static enum export export_from_sec(struct elf_info *elf, unsigned int sec)
> static struct symbol *sym_add_exported(const char *name, struct module *mod,
> 				       enum export export)
> {
>-	struct symbol *s = find_symbol(name);
>+	const char *symbol_name = name;
>+	const char *namespace = sym_extract_namespace(&symbol_name);
>+	struct symbol *s = find_symbol(symbol_name);
>
> 	if (!s) {
>-		s = new_symbol(name, mod, export);
>+		s = new_symbol(symbol_name, mod, export);
>+		s->namespace = namespace;
> 	} else {
> 		if (!s->preloaded) {
>-			warn("%s: '%s' exported twice. Previous export "
>-			     "was in %s%s\n", mod->name, name,
>-			     s->module->name,
>-			     is_vmlinux(s->module->name) ?"":".ko");
>+			warn("%s: '%s' exported twice. Previous export was in %s%s\n",
>+			     mod->name, symbol_name, s->module->name,
>+			     is_vmlinux(s->module->name) ? "" : ".ko");
> 		} else {
> 			/* In case Module.symvers was out of date */
> 			s->module = mod;
>@@ -1943,6 +1993,7 @@ static void read_symbols(const char *modname)
> 	const char *symname;
> 	char *version;
> 	char *license;
>+	char *namespace;
> 	struct module *mod;
> 	struct elf_info info = { };
> 	Elf_Sym *sym;
>@@ -1974,6 +2025,12 @@ static void read_symbols(const char *modname)
> 		license = get_next_modinfo(&info, "license", license);
> 	}
>
>+	namespace = get_modinfo(&info, "import_ns");
>+	while (namespace) {
>+		add_namespace(&mod->imported_namespaces, namespace);
>+		namespace = get_next_modinfo(&info, "import_ns", namespace);
>+	}
>+
> 	for (sym = info.symtab_start; sym < info.symtab_stop; sym++) {
> 		symname = remove_dot(info.strtab + sym->st_name);
>
>@@ -2118,6 +2175,13 @@ static int check_exports(struct module *mod)
> 			basename++;
> 		else
> 			basename = mod->name;
>+
>+		if (exp->namespace &&
>+		    !module_imports_namespace(mod, exp->namespace)) {
>+			warn("module %s uses symbol %s from namespace %s, but does not import it.\n",
>+			     basename, exp->name, exp->namespace);
>+		}
>+
> 		if (!mod->gpl_compatible)
> 			check_for_gpl_usage(exp->export, basename, exp->name);
> 		check_for_unused(exp->export, basename, exp->name);
>@@ -2395,16 +2459,21 @@ static void write_dump(const char *fname)
> {
> 	struct buffer buf = { };
> 	struct symbol *symbol;
>+	const char *namespace;
> 	int n;
>
> 	for (n = 0; n < SYMBOL_HASH_SIZE ; n++) {
> 		symbol = symbolhash[n];
> 		while (symbol) {
>-			if (dump_sym(symbol))
>-				buf_printf(&buf, "0x%08x\t%s\t%s\t%s\n",
>-					symbol->crc, symbol->name,
>-					symbol->module->name,
>-					export_str(symbol->export));
>+			if (dump_sym(symbol)) {
>+				namespace = symbol->namespace;
>+				buf_printf(&buf, "0x%08x\t%s%s%s\t%s\t%s\n",
>+					   symbol->crc, symbol->name,
>+					   namespace ? "." : "",
>+					   namespace ? namespace : "",

I think it might be cleaner to just have namespace be a separate
field in Module.symvers, rather than appending a dot and the
namespace at the end of a symbol name. Maybe something like

    <crc> <symbol_name> <namespace> <module>

For symbols without a namespace, we could just have "", with all
fields delimited by tabs. This is just a stylistic suggestion, what do
you think?

Regardless of the chosen format, I think we need to document how
namespaces are represented in Documentation/kbuild/modules.rst, where
it describes the Module.symvers format.

Thanks!

Jessica

>+					   symbol->module->name,
>+					   export_str(symbol->export));
>+			}
> 			symbol = symbol->next;
> 		}
> 	}
>diff --git a/scripts/mod/modpost.h b/scripts/mod/modpost.h
>index 8453d6ac2f77..9626bf3e7424 100644
>--- a/scripts/mod/modpost.h
>+++ b/scripts/mod/modpost.h
>@@ -109,6 +109,11 @@ buf_printf(struct buffer *buf, const char *fmt, ...);
> void
> buf_write(struct buffer *buf, const char *s, int len);
>
>+struct namespace_list {
>+	struct namespace_list *next;
>+	char namespace[0];
>+};
>+
> struct module {
> 	struct module *next;
> 	const char *name;
>@@ -121,6 +126,8 @@ struct module {
> 	struct buffer dev_table_buf;
> 	char	     srcversion[25];
> 	int is_dot_o;
>+	// Actual imported namespaces
>+	struct namespace_list *imported_namespaces;
> };
>
> struct elf_info {
>-- 
>2.23.0.rc1.153.gdeed80330f-goog
>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190826162138.GA31739%40linux-8ccs.
