Return-Path: <usb-storage+bncBDMYPB44VAFRBKE7THVQKGQEKJXFCFQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wm1-x348.google.com (mail-wm1-x348.google.com [IPv6:2a00:1450:4864:20::348])
	by mail.lfdr.de (Postfix) with ESMTPS id B2B589FEF1
	for <lists+usb-storage@lfdr.de>; Wed, 28 Aug 2019 11:55:52 +0200 (CEST)
Received: by mail-wm1-x348.google.com with SMTP id f10sf787004wmh.8
        for <lists+usb-storage@lfdr.de>; Wed, 28 Aug 2019 02:55:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566986152; cv=pass;
        d=google.com; s=arc-20160816;
        b=cmbArd1vWlXqMm8KvEnUcxwFJAIe3oMrKREzV5OeGXyHLS7RUZqx2fOOzc3v4JAoOL
         tdY+dtnnWxvYkRdYid1VgSnkjwC08jhnodBnJ5NGtoiwChGW+MCVDybSXLOjvXE6peaE
         dKiEm9OksX84dfbB9vFRhDnVNJhjv8f5rklgO3OrdPv9iJLFt7omlB+K0NMeuDXcqD2o
         uwqf4Yo5Ld7m+dBuNLfEVqSJZlliY7OGNKG0l/ZxQmkuAcFY1MgbbUJ5SeoB8rMjlIcZ
         ZRZ8fb8tutgKKBKdskklZeDfoFXdSrxc1Pd3ijeNcecOl+T/KpJZ/nfmwU4AxXJatXqW
         a6zA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=RQakugGXUsSYMJKBiJj/50lnivsRQ8+B6PBmvhOxXcA=;
        b=lKbLn9AsbihwvaxljM8VsIJS442OUfUpJXhUeUBCvbvuNUBWDf0cp/kq6zHdyJc5eG
         WTX7mOMlVaN8XJIbibZRlH9tKPsmr06djMspVyI+9XLm42dLbAIClsgZBfOMCV7dFdhL
         Qje3iXSxP7MlD8P1Ga2bF3dzrnFvIjDbtjgkDfsgJ0ZoxVglc9Wi/VqVHgr9+oRZplcG
         9tjmrMtY4DLDs5PEVeu5BYJACSacl+JrSA1jP9tsJXVln92Kt6R0tXn0kyBpqjBGAyB8
         3hKgmQgHfbd5WvO2KDsiww2XD5CMdfhO2pxZU8AJwEJvd4uL90uQXrhZ36TTNOSKsoWI
         pyfw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JhOxP7zu;
       spf=pass (google.com: domain of maennich@google.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=maennich@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=RQakugGXUsSYMJKBiJj/50lnivsRQ8+B6PBmvhOxXcA=;
        b=Kk2GuLr0myhUq2eRhF3WAu7yk+kljnTSEQ419u+egfR5+e0P2mfteFS6H8QDW8dQL4
         1ZGlL1t5ImLW46WYhvZslGe7UvIee8RuNsimR6I0HWBaeCmcYYcbgOU5iqPoJRa/szzq
         Q+oZMTH97bjrJX96DaGbuDWIKgQuw+vjPIViI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RQakugGXUsSYMJKBiJj/50lnivsRQ8+B6PBmvhOxXcA=;
        b=EIuM1bGagly13vqvE4Cx/2mPqACp83WjwJaGCGZoqVfBj5TVAmaD8PtD9iPaQe+ljz
         5VMTj4xANB8V4eR4rx4NZdSMBi1j8Wx7S47PEI5Rj0t/eQyqhfBS8act5jDtNYdAcXeE
         5+9HbL5JMzKPgsSvy2SwmYloWixrl7CEU09g991aGLkQ71wXOyijWfeKJRqGWF5lqIlr
         UnVBPC63zxopuHZtHCF5p/KBpOxsnE1CnHj1CrWtplCQYsmhxpCqcPxWkR785iv2iLwz
         QWkj1ebNwzGidAfQBSIpcGZgTYEJD9i9cZxCL46Il5k0iJDpc1EJ9f9rDCyi+CnN0leV
         Fcvg==
X-Gm-Message-State: APjAAAWEcVVsCB6/oNg3kf5vM+YteTRYI2eANPMmggab7HdNKv1EK/EG
	rw17TW3X1JMA2WxDolbUh7PHjA==
X-Google-Smtp-Source: APXvYqxjUTr+/deaZv+BBXKrYs8a7Roeeugfdd73ilBu/8jdKT8fi5e7+w7AzhXNUEMmoGFxqWs/7A==
X-Received: by 2002:adf:ea89:: with SMTP id s9mr3711964wrm.76.1566986152248;
        Wed, 28 Aug 2019 02:55:52 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a1c:3b05:: with SMTP id i5ls721845wma.2.gmail; Wed, 28 Aug
 2019 02:55:51 -0700 (PDT)
X-Received: by 2002:a7b:c241:: with SMTP id b1mr3833579wmj.165.1566986151525;
        Wed, 28 Aug 2019 02:55:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566986151; cv=none;
        d=google.com; s=arc-20160816;
        b=twwx0P9TrQmanTUBj1pywaU5YvJiHoc9ciSMlyXES4GtXDtKr0hGDjwvvvMJPVHz0w
         /VHhNKL3PM80ZW2bS5ETo5sOaqF1q2B2Z7jd8TX4601MF2PSKUK20c0uXRFvNuVJqcXP
         9djpopcLD+XroDHUZ+VnMXNN6CuF+e3vJAg//E0+gmZgPldyBodWlHFpWrA3sKowTuxR
         naIXiw6AMHJ4GTuj12m8lo38dnPa2UozQf0S1aqSd1lQm96rmmyc8bfLqYLhIDIM81Um
         QT9uKx2JCVk+FX2CE1duGUggcF8S7IdFV0hdbypeiU9CeKjBwNok21wCzg92R4e5Zl9P
         3Bsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=2sd+NbYjI+y0fSmBssITqTfJg25oXye+IA7yIyCqQ68=;
        b=JD6a0LS1UG4oPr/Nv5TX7eqI2sT5NF3z6yMl5yIYzqm5o153l+NjWbsiiCyhwLKMBx
         XTsx4gIK/lmNRS5Dq2rD22Zv0eBo7/wv8eZTKm0yD/6kvEN9anZOUYfRUsi9PaKdF3g6
         lcCIu+epDSNF9M9bqOtln+P1DN9bwi9y3iUVaPeOOwykGpxWpoxxIyqU6X3+h3goDLJz
         bR0yjJGSGlVRq91fWu91UBuHpe19Y21NKkF/XueeAqMkjKAwK3iScTVDzRvDWvY1U69U
         YDgxmQO2kwZdLUPW9+a/VoVbPxRod2DNacEGetm6WNwbpDyqG2T10lPpQ6GRNhw/tmCi
         ei1w==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JhOxP7zu;
       spf=pass (google.com: domain of maennich@google.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=maennich@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id c2sor1167060wmb.26.2019.08.28.02.55.51
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 28 Aug 2019 02:55:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of maennich@google.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a1c:cc09:: with SMTP id h9mr3654139wmb.32.1566986150882;
        Wed, 28 Aug 2019 02:55:50 -0700 (PDT)
Received: from google.com ([2a00:79e0:d:210:e8f7:125b:61e9:733d])
        by smtp.gmail.com with ESMTPSA id a190sm3028182wme.8.2019.08.28.02.55.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Aug 2019 02:55:50 -0700 (PDT)
Date: Wed, 28 Aug 2019 10:55:46 +0100
From: "'Matthias Maennich' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: Jessica Yu <jeyu@kernel.org>
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
Message-ID: <20190828095546.GA38321@google.com>
References: <20190813121733.52480-1-maennich@google.com>
 <20190821114955.12788-1-maennich@google.com>
 <20190821114955.12788-5-maennich@google.com>
 <20190826162138.GA31739@linux-8ccs>
 <20190827144117.GB102829@google.com>
 <20190828094325.GA25048@linux-8ccs>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20190828094325.GA25048@linux-8ccs>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: maennich@google.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=JhOxP7zu;       spf=pass
 (google.com: domain of maennich@google.com designates 209.85.220.65 as
 permitted sender) smtp.mailfrom=maennich@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
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

On Wed, Aug 28, 2019 at 11:43:26AM +0200, Jessica Yu wrote:
>+++ Matthias Maennich [27/08/19 15:41 +0100]:
>>On Mon, Aug 26, 2019 at 06:21:38PM +0200, Jessica Yu wrote:
>>>+++ Matthias Maennich [21/08/19 12:49 +0100]:
>>>>Add support for symbols that are exported into namespaces. For that,
>>>>extract any namespace suffix from the symbol name. In addition, emit a
>>>>warning whenever a module refers to an exported symbol without
>>>>explicitly importing the namespace that it is defined in. This patch
>>>>consistently adds the namespace suffix to symbol names exported into
>>>>Module.symvers.
>>>>
>>>>Example warning emitted by modpost in case of the above violation:
>>>>
>>>>WARNING: module ums-usbat uses symbol usb_stor_resume from namespace
>>>>USB_STORAGE, but does not import it.
>>>>
>>>>Co-developed-by: Martijn Coenen <maco@android.com>
>>>>Signed-off-by: Martijn Coenen <maco@android.com>
>>>>Reviewed-by: Joel Fernandes (Google) <joel@joelfernandes.org>
>>>>Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>>>>Signed-off-by: Matthias Maennich <maennich@google.com>
>>>>---
>>>>scripts/mod/modpost.c | 91 +++++++++++++++++++++++++++++++++++++------
>>>>scripts/mod/modpost.h |  7 ++++
>>>>2 files changed, 87 insertions(+), 11 deletions(-)
>>>>
>>>>diff --git a/scripts/mod/modpost.c b/scripts/mod/modpost.c
>>>>index f277e116e0eb..538bb24ffee3 100644
>>>>--- a/scripts/mod/modpost.c
>>>>+++ b/scripts/mod/modpost.c
>>>>@@ -164,6 +164,7 @@ struct symbol {
>>>>	struct module *module;
>>>>	unsigned int crc;
>>>>	int crc_valid;
>>>>+	const char *namespace;
>>>>	unsigned int weak:1;
>>>>	unsigned int vmlinux:1;    /* 1 if symbol is defined in vmlinux */
>>>>	unsigned int kernel:1;     /* 1 if symbol is from kernel
>>>>@@ -233,6 +234,37 @@ static struct symbol *find_symbol(const char *name)
>>>>	return NULL;
>>>>}
>>>>
>>>>+static bool contains_namespace(struct namespace_list *list,
>>>>+			       const char *namespace)
>>>>+{
>>>>+	struct namespace_list *ns_entry;
>>>>+
>>>>+	for (ns_entry = list; ns_entry != NULL; ns_entry = ns_entry->next)
>>>>+		if (strcmp(ns_entry->namespace, namespace) == 0)
>>>>+			return true;
>>>>+
>>>>+	return false;
>>>>+}
>>>>+
>>>>+static void add_namespace(struct namespace_list **list, const char *namespace)
>>>>+{
>>>>+	struct namespace_list *ns_entry;
>>>>+
>>>>+	if (!contains_namespace(*list, namespace)) {
>>>>+		ns_entry = NOFAIL(malloc(sizeof(struct namespace_list) +
>>>>+					 strlen(namespace) + 1));
>>>>+		strcpy(ns_entry->namespace, namespace);
>>>>+		ns_entry->next = *list;
>>>>+		*list = ns_entry;
>>>>+	}
>>>>+}
>>>>+
>>>>+static bool module_imports_namespace(struct module *module,
>>>>+				     const char *namespace)
>>>>+{
>>>>+	return contains_namespace(module->imported_namespaces, namespace);
>>>>+}
>>>>+
>>>>static const struct {
>>>>	const char *str;
>>>>	enum export export;
>>>>@@ -312,6 +344,22 @@ static enum export export_from_sec(struct elf_info *elf, unsigned int sec)
>>>>		return export_unknown;
>>>>}
>>>>
>>>>+static const char *sym_extract_namespace(const char **symname)
>>>>+{
>>>>+	size_t n;
>>>>+	char *dupsymname;
>>>>+
>>>>+	n = strcspn(*symname, ".");
>>>>+	if (n < strlen(*symname) - 1) {
>>>>+		dupsymname = NOFAIL(strdup(*symname));
>>>>+		dupsymname[n] = '\0';
>>>>+		*symname = dupsymname;
>>>>+		return dupsymname + n + 1;
>>>>+	}
>>>>+
>>>>+	return NULL;
>>>>+}
>>>>+
>>>>/**
>>>>* Add an exported symbol - it may have already been added without a
>>>>* CRC, in this case just update the CRC
>>>>@@ -319,16 +367,18 @@ static enum export export_from_sec(struct elf_info *elf, unsigned int sec)
>>>>static struct symbol *sym_add_exported(const char *name, struct module *mod,
>>>>				       enum export export)
>>>>{
>>>>-	struct symbol *s = find_symbol(name);
>>>>+	const char *symbol_name = name;
>>>>+	const char *namespace = sym_extract_namespace(&symbol_name);
>>>>+	struct symbol *s = find_symbol(symbol_name);
>>>>
>>>>	if (!s) {
>>>>-		s = new_symbol(name, mod, export);
>>>>+		s = new_symbol(symbol_name, mod, export);
>>>>+		s->namespace = namespace;
>>>>	} else {
>>>>		if (!s->preloaded) {
>>>>-			warn("%s: '%s' exported twice. Previous export "
>>>>-			     "was in %s%s\n", mod->name, name,
>>>>-			     s->module->name,
>>>>-			     is_vmlinux(s->module->name) ?"":".ko");
>>>>+			warn("%s: '%s' exported twice. Previous export was in %s%s\n",
>>>>+			     mod->name, symbol_name, s->module->name,
>>>>+			     is_vmlinux(s->module->name) ? "" : ".ko");
>>>>		} else {
>>>>			/* In case Module.symvers was out of date */
>>>>			s->module = mod;
>>>>@@ -1943,6 +1993,7 @@ static void read_symbols(const char *modname)
>>>>	const char *symname;
>>>>	char *version;
>>>>	char *license;
>>>>+	char *namespace;
>>>>	struct module *mod;
>>>>	struct elf_info info = { };
>>>>	Elf_Sym *sym;
>>>>@@ -1974,6 +2025,12 @@ static void read_symbols(const char *modname)
>>>>		license = get_next_modinfo(&info, "license", license);
>>>>	}
>>>>
>>>>+	namespace = get_modinfo(&info, "import_ns");
>>>>+	while (namespace) {
>>>>+		add_namespace(&mod->imported_namespaces, namespace);
>>>>+		namespace = get_next_modinfo(&info, "import_ns", namespace);
>>>>+	}
>>>>+
>>>>	for (sym = info.symtab_start; sym < info.symtab_stop; sym++) {
>>>>		symname = remove_dot(info.strtab + sym->st_name);
>>>>
>>>>@@ -2118,6 +2175,13 @@ static int check_exports(struct module *mod)
>>>>			basename++;
>>>>		else
>>>>			basename = mod->name;
>>>>+
>>>>+		if (exp->namespace &&
>>>>+		    !module_imports_namespace(mod, exp->namespace)) {
>>>>+			warn("module %s uses symbol %s from namespace %s, but does not import it.\n",
>>>>+			     basename, exp->name, exp->namespace);
>>>>+		}
>>>>+
>>>>		if (!mod->gpl_compatible)
>>>>			check_for_gpl_usage(exp->export, basename, exp->name);
>>>>		check_for_unused(exp->export, basename, exp->name);
>>>>@@ -2395,16 +2459,21 @@ static void write_dump(const char *fname)
>>>>{
>>>>	struct buffer buf = { };
>>>>	struct symbol *symbol;
>>>>+	const char *namespace;
>>>>	int n;
>>>>
>>>>	for (n = 0; n < SYMBOL_HASH_SIZE ; n++) {
>>>>		symbol = symbolhash[n];
>>>>		while (symbol) {
>>>>-			if (dump_sym(symbol))
>>>>-				buf_printf(&buf, "0x%08x\t%s\t%s\t%s\n",
>>>>-					symbol->crc, symbol->name,
>>>>-					symbol->module->name,
>>>>-					export_str(symbol->export));
>>>>+			if (dump_sym(symbol)) {
>>>>+				namespace = symbol->namespace;
>>>>+				buf_printf(&buf, "0x%08x\t%s%s%s\t%s\t%s\n",
>>>>+					   symbol->crc, symbol->name,
>>>>+					   namespace ? "." : "",
>>>>+					   namespace ? namespace : "",
>>>
>>>I think it might be cleaner to just have namespace be a separate
>>>field in Module.symvers, rather than appending a dot and the
>>>namespace at the end of a symbol name. Maybe something like
>>>
>>> <crc> <symbol_name> <namespace> <module>
>>>
>>>For symbols without a namespace, we could just have "", with all
>>>fields delimited by tabs. This is just a stylistic suggestion, what do
>>>you think?
>>
>>I thought of something like that initially, but did not do it to not
>>break users of this file. But as I am anyway breaking users by changing
>>the symbol name into symbol.NS, I might as well do it as you suggested.
>>Since read_dump() also knew already how to extract the namespaces from
>>symbol.NS, it had already worked without a change to the reading code
>>of modpost. Are there any other consumers of Module.symvers that we
>>should be aware of?
>
>Maybe we can ease any possible breakage caused by the new format by
>putting the namespace column last? Then the first 4 fields crc,
>symbol, module, export type will remain in the same order, with
>namespace last. In-tree, I think we would need to update
>scripts/export_report.pl.
>
>kmod is likely to be affected too - Lucas, would the addition of a new
>field (in the order described above) in Module.symvers break any kmod tools?
>

According to the comment right above read_dump() and having a look a the
implementation of it, the format is

   0x12345678<tab>symbol<tab>module[[<tab>export]<tab>something]

So, independently of what 'something' is, also export seems to be
optional. OTOH, write_dump() seems to consistently write

   0x12345678<tab>symbol<tab>module<tab>export

Not sure if there is something modifying Module.symvers afterwards or
whether this is something that historically needs to be supported, but
if we could rule that out, I would prefer

  0x12345678<tab>symbol<tab>namespace<tab>module<tab>export

as you initially suggested.

Cheers,
Matthias

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190828095546.GA38321%40google.com.
