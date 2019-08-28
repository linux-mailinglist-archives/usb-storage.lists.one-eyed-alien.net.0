Return-Path: <usb-storage+bncBD45FSE2XIORBR4ZTHVQKGQE4ZHIIMY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x548.google.com (mail-pg1-x548.google.com [IPv6:2607:f8b0:4864:20::548])
	by mail.lfdr.de (Postfix) with ESMTPS id 172E49FEBE
	for <lists+usb-storage@lfdr.de>; Wed, 28 Aug 2019 11:43:38 +0200 (CEST)
Received: by mail-pg1-x548.google.com with SMTP id b18sf1328393pgg.8
        for <lists+usb-storage@lfdr.de>; Wed, 28 Aug 2019 02:43:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566985416; cv=pass;
        d=google.com; s=arc-20160816;
        b=zQfn4y3XLjrYATfHBfboIfA5Ip4moSKvcQMMKFCudqHvFjP/rlptNZXsk6Bo3HFtmg
         7olNpmLWF3EIgHE9SYt0mTZsFu3THzcW/NlCeAiwSzSuXqmurG/cxm+vXweHzIaOPF2E
         jSet2JaAxpCwmGlBC45CEB+JYIT/xR0ZHS470V2LO6X2uDEg7Et/MltM7sZa8t7h53hO
         PAP18Xq2QNykcdVx9FB9oj/7F987vKaWmbf8D8MAQ2KRM9ffVkNZXdLdqpt/cXdEY2Rj
         +3BYLS68b5D5112XX8rj1HSQl3n2Q+dmtKBHqKEnvdebJyozGaetBAbTD/hQlOaNcUUp
         7FzQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=s3GXVkWtSIG7P4lFg2qpKezEg19/QvirQV+gDLABQ0Y=;
        b=HAfxpJE4MWuqDdABTOaLhMGxqMiXYEplXFg35G1F3XT6583wBdImzHo/IRD34Vs/3J
         wLQL+C5MZ6eMvc5NVYAU2iDE7OCE/uv8gAne5ebIYi+kFlaJ+ot8Tvaxei6mX9Y+sNgZ
         zeesud9Agkfu+TkDX/BZcmDjcgCSYkRdaPLb3qf8QmaTC/xCF+OhV8on/4rcKHq7qEVA
         EGwF3F8GkaYuVllLdA4yQp1DsAkGtuZ22PAIcnsADEwRB+aFKSvk/pnIQS3u7GjqHVzg
         3Xhfp6aAY1LzXWdUqxYE1IKNzXvOF6uoOGG8OtQqr2PLHhUQlPsUtxaNf0Izv7mGaf5H
         gD2w==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=KSVkX0Cg;
       spf=pass (google.com: domain of jeyu@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jeyu@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=s3GXVkWtSIG7P4lFg2qpKezEg19/QvirQV+gDLABQ0Y=;
        b=N2gGeUpBZOlFY/sKd/s2nhgeENj7qOY1WQM5/E7Lel5vVwrCzGvfdaU2SNeP4JSqIw
         ZNhG+NSpnn8dboVGTykplP+aemm4m7jp5Hq/AAaqyfoxXahrw4qPr+5lxDU3qNO0sRGS
         VSK/y/M1EFhaq7ZEoLJvShLn6Tv3jsUvLBu00=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=s3GXVkWtSIG7P4lFg2qpKezEg19/QvirQV+gDLABQ0Y=;
        b=aP1y4FHYLQK8kEg696IEPAknYfGJHVyAUwlMvmpqsurDleUIruA+lL4mkSf3mxOn21
         3+ZbS59n8sWvA+94ONRGiqeLL5b9zRro73/9rvO4R2FY/cqxbGPgW1Obg/gwUCCTWOvK
         ZVC/MyY1klpsjT72u4KjOJimps6b1n5jEfIl4kRGXtPIhZUxHg5oPyap6NRUs2rEbPUD
         Mck3ogQr7zmqx5o6592ByiSexa1WsLiKrVBjDnIPhUZ0AHwLLLwyyLcxihAD8Hb4lxFH
         EimIkvyoC5WOi//5FiqnxQiUVdFkXzsYt7qITU1urksa1ZmtCjAKO05vUfyTYr9Muebi
         97Nw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAU1ghL4gfx/osPP2j1/wihb+0XPDVoKtP1/IdtmcQdouhCk/Gn1
	Q1LyFEciQmzVQbR/LfM10WotWQ==
X-Google-Smtp-Source: APXvYqySzWK5Ucl8xKTYXchjXx5in4KS17CvetceveN9lDRepn9m6YIbKmbn2ejIiuunQ/CW5hs71Q==
X-Received: by 2002:a17:90a:db0d:: with SMTP id g13mr3369046pjv.51.1566985416082;
        Wed, 28 Aug 2019 02:43:36 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:8a18:: with SMTP id w24ls664816pjn.0.canary-gmail;
 Wed, 28 Aug 2019 02:43:35 -0700 (PDT)
X-Received: by 2002:a17:902:7d8b:: with SMTP id a11mr3391363plm.306.1566985415582;
        Wed, 28 Aug 2019 02:43:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566985415; cv=none;
        d=google.com; s=arc-20160816;
        b=GUn6JXb7AI6xFzCYrr+E6438bWsVJGrKDdcvlG2tLiaF9qPpB6l+yNyC8R2KHqUobf
         XkmzEoveVjlBNb8P8muHdu5FYYweU/4X77G3QM3dr/rU8AI//qH3+Mj5Go2EB+msy6Lc
         dPM559e+pfa9Ceu6PjcmJ7a9UNz4P2XxODdET5QzVplnlc1MBAMsxa6QzeWnqXyVj1wQ
         4lvmyKMMpsAM07cz1J/mWiMM0+tBhG47rBEwvky85yilN2o2cVQdobTgEHNR7pvF/ENg
         47/QOgcaDbtOS6XuHdCccS2X7M82fJ6psVaUe75yn+WtopNUFNP4vT9KUa82jGuappWQ
         4kng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=xXQgSf2MXjif+QFfOB6sF38yaNeoWl2f9hT++XAUt20=;
        b=FT7vsz0SF5U/TOFImMxhH2qJtGyOZyudi6ygaD9UZ+HqhF+I2B+OyII976HyCaSTU2
         Gz5/9MeXWWQADsehyq45uX4VoAIDxCv9+31fmnK6t25zIGZhG1Qk3mRegkP0BGa4Gvd0
         rrzM/y4D11u7Zg6Lcso+AA7Ag4jUtZ+qY0COTi77Nw8qFDtyDAttB4Tv+91x+KkeKyJm
         TarVUyo0ttNhJxO3CtnV7nG25F7LLRnRhAyynziW3nnAoKGiir4pL1Wug294edyWQnzi
         FfZlrIebx4WCTuaCA3AgEPlC0suOgmvI46KAFc45+bBpeaf+SGdp0T5EuodL7nv6mJYD
         0s2g==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=KSVkX0Cg;
       spf=pass (google.com: domain of jeyu@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jeyu@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id l6si1748178pgp.391.2019.08.28.02.43.35
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Aug 2019 02:43:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of jeyu@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from linux-8ccs (ip5f5adbee.dynamic.kabel-deutschland.de [95.90.219.238])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E457F20856;
	Wed, 28 Aug 2019 09:43:29 +0000 (UTC)
Date: Wed, 28 Aug 2019 11:43:26 +0200
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
Message-ID: <20190828094325.GA25048@linux-8ccs>
References: <20190813121733.52480-1-maennich@google.com>
 <20190821114955.12788-1-maennich@google.com>
 <20190821114955.12788-5-maennich@google.com>
 <20190826162138.GA31739@linux-8ccs>
 <20190827144117.GB102829@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20190827144117.GB102829@google.com>
X-OS: Linux linux-8ccs 4.12.14-lp150.12.61-default x86_64
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: jeyu@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=KSVkX0Cg;       spf=pass
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

+++ Matthias Maennich [27/08/19 15:41 +0100]:
>On Mon, Aug 26, 2019 at 06:21:38PM +0200, Jessica Yu wrote:
>>+++ Matthias Maennich [21/08/19 12:49 +0100]:
>>>Add support for symbols that are exported into namespaces. For that,
>>>extract any namespace suffix from the symbol name. In addition, emit a
>>>warning whenever a module refers to an exported symbol without
>>>explicitly importing the namespace that it is defined in. This patch
>>>consistently adds the namespace suffix to symbol names exported into
>>>Module.symvers.
>>>
>>>Example warning emitted by modpost in case of the above violation:
>>>
>>>WARNING: module ums-usbat uses symbol usb_stor_resume from namespace
>>>USB_STORAGE, but does not import it.
>>>
>>>Co-developed-by: Martijn Coenen <maco@android.com>
>>>Signed-off-by: Martijn Coenen <maco@android.com>
>>>Reviewed-by: Joel Fernandes (Google) <joel@joelfernandes.org>
>>>Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>>>Signed-off-by: Matthias Maennich <maennich@google.com>
>>>---
>>>scripts/mod/modpost.c | 91 +++++++++++++++++++++++++++++++++++++------
>>>scripts/mod/modpost.h |  7 ++++
>>>2 files changed, 87 insertions(+), 11 deletions(-)
>>>
>>>diff --git a/scripts/mod/modpost.c b/scripts/mod/modpost.c
>>>index f277e116e0eb..538bb24ffee3 100644
>>>--- a/scripts/mod/modpost.c
>>>+++ b/scripts/mod/modpost.c
>>>@@ -164,6 +164,7 @@ struct symbol {
>>>	struct module *module;
>>>	unsigned int crc;
>>>	int crc_valid;
>>>+	const char *namespace;
>>>	unsigned int weak:1;
>>>	unsigned int vmlinux:1;    /* 1 if symbol is defined in vmlinux */
>>>	unsigned int kernel:1;     /* 1 if symbol is from kernel
>>>@@ -233,6 +234,37 @@ static struct symbol *find_symbol(const char *name)
>>>	return NULL;
>>>}
>>>
>>>+static bool contains_namespace(struct namespace_list *list,
>>>+			       const char *namespace)
>>>+{
>>>+	struct namespace_list *ns_entry;
>>>+
>>>+	for (ns_entry = list; ns_entry != NULL; ns_entry = ns_entry->next)
>>>+		if (strcmp(ns_entry->namespace, namespace) == 0)
>>>+			return true;
>>>+
>>>+	return false;
>>>+}
>>>+
>>>+static void add_namespace(struct namespace_list **list, const char *namespace)
>>>+{
>>>+	struct namespace_list *ns_entry;
>>>+
>>>+	if (!contains_namespace(*list, namespace)) {
>>>+		ns_entry = NOFAIL(malloc(sizeof(struct namespace_list) +
>>>+					 strlen(namespace) + 1));
>>>+		strcpy(ns_entry->namespace, namespace);
>>>+		ns_entry->next = *list;
>>>+		*list = ns_entry;
>>>+	}
>>>+}
>>>+
>>>+static bool module_imports_namespace(struct module *module,
>>>+				     const char *namespace)
>>>+{
>>>+	return contains_namespace(module->imported_namespaces, namespace);
>>>+}
>>>+
>>>static const struct {
>>>	const char *str;
>>>	enum export export;
>>>@@ -312,6 +344,22 @@ static enum export export_from_sec(struct elf_info *elf, unsigned int sec)
>>>		return export_unknown;
>>>}
>>>
>>>+static const char *sym_extract_namespace(const char **symname)
>>>+{
>>>+	size_t n;
>>>+	char *dupsymname;
>>>+
>>>+	n = strcspn(*symname, ".");
>>>+	if (n < strlen(*symname) - 1) {
>>>+		dupsymname = NOFAIL(strdup(*symname));
>>>+		dupsymname[n] = '\0';
>>>+		*symname = dupsymname;
>>>+		return dupsymname + n + 1;
>>>+	}
>>>+
>>>+	return NULL;
>>>+}
>>>+
>>>/**
>>>* Add an exported symbol - it may have already been added without a
>>>* CRC, in this case just update the CRC
>>>@@ -319,16 +367,18 @@ static enum export export_from_sec(struct elf_info *elf, unsigned int sec)
>>>static struct symbol *sym_add_exported(const char *name, struct module *mod,
>>>				       enum export export)
>>>{
>>>-	struct symbol *s = find_symbol(name);
>>>+	const char *symbol_name = name;
>>>+	const char *namespace = sym_extract_namespace(&symbol_name);
>>>+	struct symbol *s = find_symbol(symbol_name);
>>>
>>>	if (!s) {
>>>-		s = new_symbol(name, mod, export);
>>>+		s = new_symbol(symbol_name, mod, export);
>>>+		s->namespace = namespace;
>>>	} else {
>>>		if (!s->preloaded) {
>>>-			warn("%s: '%s' exported twice. Previous export "
>>>-			     "was in %s%s\n", mod->name, name,
>>>-			     s->module->name,
>>>-			     is_vmlinux(s->module->name) ?"":".ko");
>>>+			warn("%s: '%s' exported twice. Previous export was in %s%s\n",
>>>+			     mod->name, symbol_name, s->module->name,
>>>+			     is_vmlinux(s->module->name) ? "" : ".ko");
>>>		} else {
>>>			/* In case Module.symvers was out of date */
>>>			s->module = mod;
>>>@@ -1943,6 +1993,7 @@ static void read_symbols(const char *modname)
>>>	const char *symname;
>>>	char *version;
>>>	char *license;
>>>+	char *namespace;
>>>	struct module *mod;
>>>	struct elf_info info = { };
>>>	Elf_Sym *sym;
>>>@@ -1974,6 +2025,12 @@ static void read_symbols(const char *modname)
>>>		license = get_next_modinfo(&info, "license", license);
>>>	}
>>>
>>>+	namespace = get_modinfo(&info, "import_ns");
>>>+	while (namespace) {
>>>+		add_namespace(&mod->imported_namespaces, namespace);
>>>+		namespace = get_next_modinfo(&info, "import_ns", namespace);
>>>+	}
>>>+
>>>	for (sym = info.symtab_start; sym < info.symtab_stop; sym++) {
>>>		symname = remove_dot(info.strtab + sym->st_name);
>>>
>>>@@ -2118,6 +2175,13 @@ static int check_exports(struct module *mod)
>>>			basename++;
>>>		else
>>>			basename = mod->name;
>>>+
>>>+		if (exp->namespace &&
>>>+		    !module_imports_namespace(mod, exp->namespace)) {
>>>+			warn("module %s uses symbol %s from namespace %s, but does not import it.\n",
>>>+			     basename, exp->name, exp->namespace);
>>>+		}
>>>+
>>>		if (!mod->gpl_compatible)
>>>			check_for_gpl_usage(exp->export, basename, exp->name);
>>>		check_for_unused(exp->export, basename, exp->name);
>>>@@ -2395,16 +2459,21 @@ static void write_dump(const char *fname)
>>>{
>>>	struct buffer buf = { };
>>>	struct symbol *symbol;
>>>+	const char *namespace;
>>>	int n;
>>>
>>>	for (n = 0; n < SYMBOL_HASH_SIZE ; n++) {
>>>		symbol = symbolhash[n];
>>>		while (symbol) {
>>>-			if (dump_sym(symbol))
>>>-				buf_printf(&buf, "0x%08x\t%s\t%s\t%s\n",
>>>-					symbol->crc, symbol->name,
>>>-					symbol->module->name,
>>>-					export_str(symbol->export));
>>>+			if (dump_sym(symbol)) {
>>>+				namespace = symbol->namespace;
>>>+				buf_printf(&buf, "0x%08x\t%s%s%s\t%s\t%s\n",
>>>+					   symbol->crc, symbol->name,
>>>+					   namespace ? "." : "",
>>>+					   namespace ? namespace : "",
>>
>>I think it might be cleaner to just have namespace be a separate
>>field in Module.symvers, rather than appending a dot and the
>>namespace at the end of a symbol name. Maybe something like
>>
>>  <crc> <symbol_name> <namespace> <module>
>>
>>For symbols without a namespace, we could just have "", with all
>>fields delimited by tabs. This is just a stylistic suggestion, what do
>>you think?
>
>I thought of something like that initially, but did not do it to not
>break users of this file. But as I am anyway breaking users by changing
>the symbol name into symbol.NS, I might as well do it as you suggested.
>Since read_dump() also knew already how to extract the namespaces from
>symbol.NS, it had already worked without a change to the reading code
>of modpost. Are there any other consumers of Module.symvers that we
>should be aware of?

Maybe we can ease any possible breakage caused by the new format by
putting the namespace column last? Then the first 4 fields crc,
symbol, module, export type will remain in the same order, with
namespace last. In-tree, I think we would need to update
scripts/export_report.pl.

kmod is likely to be affected too - Lucas, would the addition of a new
field (in the order described above) in Module.symvers break any kmod tools?

Thanks,

Jessica

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190828094325.GA25048%40linux-8ccs.
