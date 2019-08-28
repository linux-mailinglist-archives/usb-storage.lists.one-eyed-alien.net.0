Return-Path: <usb-storage+bncBD45FSE2XIORBEVJTHVQKGQEMN6ISFY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x646.google.com (mail-pl1-x646.google.com [IPv6:2607:f8b0:4864:20::646])
	by mail.lfdr.de (Postfix) with ESMTPS id 1979B9FF42
	for <lists+usb-storage@lfdr.de>; Wed, 28 Aug 2019 12:16:52 +0200 (CEST)
Received: by mail-pl1-x646.google.com with SMTP id t10sf326619plr.9
        for <lists+usb-storage@lfdr.de>; Wed, 28 Aug 2019 03:16:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566987410; cv=pass;
        d=google.com; s=arc-20160816;
        b=bS3lP94O8mkVP6opYHp5e9jJRG7uFVk3XaIRb1uqQH6xY1JT8F8felA1/09NgEdeyb
         UREqMykqndID+4aa0zdhxlX9a36N9GGfNcA3T5BA3AWCMfx1jD2UCXT/mEiChum1wg3T
         HnTQO9bwPmtE2c4x7vdLykWmmtM9taOubHVFoXUd0D9UK+2O/lEEc3GXhLWozQRBpsnp
         FLnPQiFAMrF+1nbF+vkg2Cn1/iAOmMPFe4Z5fcGcOfp0MxVvo2u3Fa3qonHgOQWETZIa
         i2YL+qBnP1J41qxzPUFY5ZoMqbxwstSXFWDGgA6SILYHaiGimY+fF+qYDl6CWtaXWWkh
         56Lg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=gvm1LD5ahj1lsexA8Mfr7ZrH3tsEcevSt2DLsFbFhAI=;
        b=jxd+gjgHnyeyaPEgcmHYtiUJgji/YBbMSCrhxZrBcz/wNxnYwfhe0oem2GbS2CT3rl
         GYoZRfXZLeCHPuMdlRLvobFkYNVjIRIDJfQ+nvn9FFq9gELSQT0Fv+HIlILRUANoI3Rm
         J7dNQ0qY6cU7EPlLCRCea9ry0lg841ZYS7LAGy4mCwJmFJ+Zz27eQkX50ubnwdADNJzB
         75cVwH0jLuKraMhOPRVPv2MBT660jpaYSopicO2eQbPku1RpCuk2QIhSL2XfEUnTpe2W
         St+Hay04rohvMoXGdVXAkFI5xfXlb+BgHMUdC7zfVXxix09noLIljZr83/On+OBx/mCc
         4L8w==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=aiyBAnLG;
       spf=pass (google.com: domain of jeyu@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jeyu@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gvm1LD5ahj1lsexA8Mfr7ZrH3tsEcevSt2DLsFbFhAI=;
        b=aLm6RJi0ghqCNXM4yQXRBXBZlLxCphrhbO/u/1RX9jl1HPgvJsl5+hfi+EaMg2O1t2
         yxBoyKvZczjWepz4uSYmCiR7E/HJhS6faUninM6OrnFrIwtkEcn1fI+vLZnkpkKCOxi8
         sXqC17xepfMRwydzAJKnVaVRyF7XFhO6NV1oU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=gvm1LD5ahj1lsexA8Mfr7ZrH3tsEcevSt2DLsFbFhAI=;
        b=LTy4ZyFGtVguikp8paIUGpqEGXS1Kw0Dya6grbRnIpQfE8kHxF87buwCP7bJ6wRO9V
         mEAf+PJar/BxhGRfwvgTfVCvBrtBSwlcqfU7XqnbwxyxoIO65blMOsPbYDgxsEmEtoFd
         8r5BtJVMATwDgSEhA9xNd+PRAFrY0YsqM37B9zvoZmYqhdkIb1b0QoHXVeIMf1f5kcOf
         0taR5h68YqimMvsFNLb8VElWCN3kcFKKw/uDagU/xdXp1vd/X4Pvto+a7JmFkuRHgmnt
         sYdfP1BWU9Y/IEIH6YshtZnIy2IZHD2zD5ia/7TK/+OJV9QOjVMLtoLPqaQlmpTJ6vgY
         uZ3A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAVu0efrE5fA8YAgZOefE4yXhsb6uc+0QmcgdFh7kyTAmMdsaEFr
	fEUW3e/RA0akIPG6JDTvMG8DJw==
X-Google-Smtp-Source: APXvYqwbQAbHwU1MsCeObeLj94Sm5j/bLiQpESekhiqeevBO1NFiBRsUX0jsZFxEblEOLEZH5lApSw==
X-Received: by 2002:a17:902:8d95:: with SMTP id v21mr3591727plo.267.1566987410406;
        Wed, 28 Aug 2019 03:16:50 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:17eb:: with SMTP id q98ls687307pja.1.gmail; Wed, 28
 Aug 2019 03:16:50 -0700 (PDT)
X-Received: by 2002:a17:90a:6581:: with SMTP id k1mr3441733pjj.47.1566987410042;
        Wed, 28 Aug 2019 03:16:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566987410; cv=none;
        d=google.com; s=arc-20160816;
        b=cUl7JuEqTwqyrH5az4sBJNjEaIqmaNpOkjM6B6TeOLnn3dp6i+lrULTiuESh8KX+Pw
         pfiM4iXfJD49b5Kq+JH/Q+dGHbXzuQRm0nf2wdBzPYUVfsrQmlD1rb6l3VkXz8Es5Aq8
         kMbN0swm2Q9hnhKiEozi1w9nNmAhvzbM4s7TwNkNRTSTrrrwbpil0/lNsLiZc60N+4V0
         cxCxDaiR0L7LS96AWvf5I9+t/eXBiMlGXp2WxssbH2Rt3PSuJWDsYRvOJhhpePBVwo3V
         ecwamF0YgOz4th0MmMUo6jP8U2hADx6FvTRyNFTeKg7kIk6STGFieqpdTIrLOqWcSujn
         hyWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=z2CspsABlldDpLU37WefDkmVycV9hwLYCXI29CkyyqE=;
        b=j6LvQ4qR9WAWLsCGB2FVUryaNigAzP/sXMT0rqg8WKckVD9VDbHuCN+WTSyTCNnrAo
         gR/U6Sg95AnJEqFAtWWhzQFp+Wk46usRoXm6tOh9Orc5cvd+aZQQ0dCbmRLTC97Zqy6c
         rmrk+S9xtJlOniK0HhA/fbBurS0ZGtOW+IyrQFmguGwbfInyP4OWWcBpwXSQgKVd4EuX
         5n4klMDBqwXnWBFbkBkbHIjHwl4+e5X/WzDuWfIBi3XuSliNXifcOUiQn4sbEVoJb8o1
         oESXyGpaK6UhDjw2v+f/jU4PAhydze6iE46RffrQrOCSbtLkd/TxtaZL8lpcmV0HjwSk
         /qow==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=aiyBAnLG;
       spf=pass (google.com: domain of jeyu@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jeyu@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id 32si1563364pla.178.2019.08.28.03.16.49
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Aug 2019 03:16:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of jeyu@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from linux-8ccs (ip5f5adbee.dynamic.kabel-deutschland.de [95.90.219.238])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 3B3292189D;
	Wed, 28 Aug 2019 10:16:44 +0000 (UTC)
Date: Wed, 28 Aug 2019 12:16:41 +0200
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
Message-ID: <20190828101640.GB25048@linux-8ccs>
References: <20190813121733.52480-1-maennich@google.com>
 <20190821114955.12788-1-maennich@google.com>
 <20190821114955.12788-5-maennich@google.com>
 <20190826162138.GA31739@linux-8ccs>
 <20190827144117.GB102829@google.com>
 <20190828094325.GA25048@linux-8ccs>
 <20190828095546.GA38321@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20190828095546.GA38321@google.com>
X-OS: Linux linux-8ccs 4.12.14-lp150.12.61-default x86_64
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: jeyu@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=aiyBAnLG;       spf=pass
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

+++ Matthias Maennich [28/08/19 10:55 +0100]:
>On Wed, Aug 28, 2019 at 11:43:26AM +0200, Jessica Yu wrote:
>>+++ Matthias Maennich [27/08/19 15:41 +0100]:
>>>On Mon, Aug 26, 2019 at 06:21:38PM +0200, Jessica Yu wrote:
>>>>+++ Matthias Maennich [21/08/19 12:49 +0100]:
>>>>>Add support for symbols that are exported into namespaces. For that,
>>>>>extract any namespace suffix from the symbol name. In addition, emit a
>>>>>warning whenever a module refers to an exported symbol without
>>>>>explicitly importing the namespace that it is defined in. This patch
>>>>>consistently adds the namespace suffix to symbol names exported into
>>>>>Module.symvers.
>>>>>
>>>>>Example warning emitted by modpost in case of the above violation:
>>>>>
>>>>>WARNING: module ums-usbat uses symbol usb_stor_resume from namespace
>>>>>USB_STORAGE, but does not import it.
>>>>>
>>>>>Co-developed-by: Martijn Coenen <maco@android.com>
>>>>>Signed-off-by: Martijn Coenen <maco@android.com>
>>>>>Reviewed-by: Joel Fernandes (Google) <joel@joelfernandes.org>
>>>>>Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>>>>>Signed-off-by: Matthias Maennich <maennich@google.com>
>>>>>---
>>>>>scripts/mod/modpost.c | 91 +++++++++++++++++++++++++++++++++++++------
>>>>>scripts/mod/modpost.h |  7 ++++
>>>>>2 files changed, 87 insertions(+), 11 deletions(-)
>>>>>
>>>>>diff --git a/scripts/mod/modpost.c b/scripts/mod/modpost.c
>>>>>index f277e116e0eb..538bb24ffee3 100644
>>>>>--- a/scripts/mod/modpost.c
>>>>>+++ b/scripts/mod/modpost.c
>>>>>@@ -164,6 +164,7 @@ struct symbol {
>>>>>	struct module *module;
>>>>>	unsigned int crc;
>>>>>	int crc_valid;
>>>>>+	const char *namespace;
>>>>>	unsigned int weak:1;
>>>>>	unsigned int vmlinux:1;    /* 1 if symbol is defined in vmlinux */
>>>>>	unsigned int kernel:1;     /* 1 if symbol is from kernel
>>>>>@@ -233,6 +234,37 @@ static struct symbol *find_symbol(const char *name)
>>>>>	return NULL;
>>>>>}
>>>>>
>>>>>+static bool contains_namespace(struct namespace_list *list,
>>>>>+			       const char *namespace)
>>>>>+{
>>>>>+	struct namespace_list *ns_entry;
>>>>>+
>>>>>+	for (ns_entry = list; ns_entry != NULL; ns_entry = ns_entry->next)
>>>>>+		if (strcmp(ns_entry->namespace, namespace) == 0)
>>>>>+			return true;
>>>>>+
>>>>>+	return false;
>>>>>+}
>>>>>+
>>>>>+static void add_namespace(struct namespace_list **list, const char *namespace)
>>>>>+{
>>>>>+	struct namespace_list *ns_entry;
>>>>>+
>>>>>+	if (!contains_namespace(*list, namespace)) {
>>>>>+		ns_entry = NOFAIL(malloc(sizeof(struct namespace_list) +
>>>>>+					 strlen(namespace) + 1));
>>>>>+		strcpy(ns_entry->namespace, namespace);
>>>>>+		ns_entry->next = *list;
>>>>>+		*list = ns_entry;
>>>>>+	}
>>>>>+}
>>>>>+
>>>>>+static bool module_imports_namespace(struct module *module,
>>>>>+				     const char *namespace)
>>>>>+{
>>>>>+	return contains_namespace(module->imported_namespaces, namespace);
>>>>>+}
>>>>>+
>>>>>static const struct {
>>>>>	const char *str;
>>>>>	enum export export;
>>>>>@@ -312,6 +344,22 @@ static enum export export_from_sec(struct elf_info *elf, unsigned int sec)
>>>>>		return export_unknown;
>>>>>}
>>>>>
>>>>>+static const char *sym_extract_namespace(const char **symname)
>>>>>+{
>>>>>+	size_t n;
>>>>>+	char *dupsymname;
>>>>>+
>>>>>+	n = strcspn(*symname, ".");
>>>>>+	if (n < strlen(*symname) - 1) {
>>>>>+		dupsymname = NOFAIL(strdup(*symname));
>>>>>+		dupsymname[n] = '\0';
>>>>>+		*symname = dupsymname;
>>>>>+		return dupsymname + n + 1;
>>>>>+	}
>>>>>+
>>>>>+	return NULL;
>>>>>+}
>>>>>+
>>>>>/**
>>>>>* Add an exported symbol - it may have already been added without a
>>>>>* CRC, in this case just update the CRC
>>>>>@@ -319,16 +367,18 @@ static enum export export_from_sec(struct elf_info *elf, unsigned int sec)
>>>>>static struct symbol *sym_add_exported(const char *name, struct module *mod,
>>>>>				       enum export export)
>>>>>{
>>>>>-	struct symbol *s = find_symbol(name);
>>>>>+	const char *symbol_name = name;
>>>>>+	const char *namespace = sym_extract_namespace(&symbol_name);
>>>>>+	struct symbol *s = find_symbol(symbol_name);
>>>>>
>>>>>	if (!s) {
>>>>>-		s = new_symbol(name, mod, export);
>>>>>+		s = new_symbol(symbol_name, mod, export);
>>>>>+		s->namespace = namespace;
>>>>>	} else {
>>>>>		if (!s->preloaded) {
>>>>>-			warn("%s: '%s' exported twice. Previous export "
>>>>>-			     "was in %s%s\n", mod->name, name,
>>>>>-			     s->module->name,
>>>>>-			     is_vmlinux(s->module->name) ?"":".ko");
>>>>>+			warn("%s: '%s' exported twice. Previous export was in %s%s\n",
>>>>>+			     mod->name, symbol_name, s->module->name,
>>>>>+			     is_vmlinux(s->module->name) ? "" : ".ko");
>>>>>		} else {
>>>>>			/* In case Module.symvers was out of date */
>>>>>			s->module = mod;
>>>>>@@ -1943,6 +1993,7 @@ static void read_symbols(const char *modname)
>>>>>	const char *symname;
>>>>>	char *version;
>>>>>	char *license;
>>>>>+	char *namespace;
>>>>>	struct module *mod;
>>>>>	struct elf_info info = { };
>>>>>	Elf_Sym *sym;
>>>>>@@ -1974,6 +2025,12 @@ static void read_symbols(const char *modname)
>>>>>		license = get_next_modinfo(&info, "license", license);
>>>>>	}
>>>>>
>>>>>+	namespace = get_modinfo(&info, "import_ns");
>>>>>+	while (namespace) {
>>>>>+		add_namespace(&mod->imported_namespaces, namespace);
>>>>>+		namespace = get_next_modinfo(&info, "import_ns", namespace);
>>>>>+	}
>>>>>+
>>>>>	for (sym = info.symtab_start; sym < info.symtab_stop; sym++) {
>>>>>		symname = remove_dot(info.strtab + sym->st_name);
>>>>>
>>>>>@@ -2118,6 +2175,13 @@ static int check_exports(struct module *mod)
>>>>>			basename++;
>>>>>		else
>>>>>			basename = mod->name;
>>>>>+
>>>>>+		if (exp->namespace &&
>>>>>+		    !module_imports_namespace(mod, exp->namespace)) {
>>>>>+			warn("module %s uses symbol %s from namespace %s, but does not import it.\n",
>>>>>+			     basename, exp->name, exp->namespace);
>>>>>+		}
>>>>>+
>>>>>		if (!mod->gpl_compatible)
>>>>>			check_for_gpl_usage(exp->export, basename, exp->name);
>>>>>		check_for_unused(exp->export, basename, exp->name);
>>>>>@@ -2395,16 +2459,21 @@ static void write_dump(const char *fname)
>>>>>{
>>>>>	struct buffer buf = { };
>>>>>	struct symbol *symbol;
>>>>>+	const char *namespace;
>>>>>	int n;
>>>>>
>>>>>	for (n = 0; n < SYMBOL_HASH_SIZE ; n++) {
>>>>>		symbol = symbolhash[n];
>>>>>		while (symbol) {
>>>>>-			if (dump_sym(symbol))
>>>>>-				buf_printf(&buf, "0x%08x\t%s\t%s\t%s\n",
>>>>>-					symbol->crc, symbol->name,
>>>>>-					symbol->module->name,
>>>>>-					export_str(symbol->export));
>>>>>+			if (dump_sym(symbol)) {
>>>>>+				namespace = symbol->namespace;
>>>>>+				buf_printf(&buf, "0x%08x\t%s%s%s\t%s\t%s\n",
>>>>>+					   symbol->crc, symbol->name,
>>>>>+					   namespace ? "." : "",
>>>>>+					   namespace ? namespace : "",
>>>>
>>>>I think it might be cleaner to just have namespace be a separate
>>>>field in Module.symvers, rather than appending a dot and the
>>>>namespace at the end of a symbol name. Maybe something like
>>>>
>>>><crc> <symbol_name> <namespace> <module>
>>>>
>>>>For symbols without a namespace, we could just have "", with all
>>>>fields delimited by tabs. This is just a stylistic suggestion, what do
>>>>you think?
>>>
>>>I thought of something like that initially, but did not do it to not
>>>break users of this file. But as I am anyway breaking users by changing
>>>the symbol name into symbol.NS, I might as well do it as you suggested.
>>>Since read_dump() also knew already how to extract the namespaces from
>>>symbol.NS, it had already worked without a change to the reading code
>>>of modpost. Are there any other consumers of Module.symvers that we
>>>should be aware of?
>>
>>Maybe we can ease any possible breakage caused by the new format by
>>putting the namespace column last? Then the first 4 fields crc,
>>symbol, module, export type will remain in the same order, with
>>namespace last. In-tree, I think we would need to update
>>scripts/export_report.pl.
>>
>>kmod is likely to be affected too - Lucas, would the addition of a new
>>field (in the order described above) in Module.symvers break any kmod tools?
>>
>
>According to the comment right above read_dump() and having a look a the
>implementation of it, the format is
>
>  0x12345678<tab>symbol<tab>module[[<tab>export]<tab>something]
>
>So, independently of what 'something' is, also export seems to be
>optional. OTOH, write_dump() seems to consistently write
>
>  0x12345678<tab>symbol<tab>module<tab>export
>
>Not sure if there is something modifying Module.symvers afterwards or
>whether this is something that historically needs to be supported, but
>if we could rule that out, I would prefer
>
> 0x12345678<tab>symbol<tab>namespace<tab>module<tab>export
>
>as you initially suggested.

I don't mind either format :-) As long as the kmod folks are OK with it.

Thanks,

Jessica


-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190828101640.GB25048%40linux-8ccs.
