Return-Path: <usb-storage+bncBDMYPB44VAFRBEUCSXVQKGQEVTLJMXA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wr1-x445.google.com (mail-wr1-x445.google.com [IPv6:2a00:1450:4864:20::445])
	by mail.lfdr.de (Postfix) with ESMTPS id 5237F9EB4A
	for <lists+usb-storage@lfdr.de>; Tue, 27 Aug 2019 16:41:23 +0200 (CEST)
Received: by mail-wr1-x445.google.com with SMTP id m7sf11507436wrw.22
        for <lists+usb-storage@lfdr.de>; Tue, 27 Aug 2019 07:41:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566916883; cv=pass;
        d=google.com; s=arc-20160816;
        b=Oq4baH9iYa9mxOvLErbiCdTKwq13xibF700DrkcjXboszEETYGw3mSZy46fbAii1Jc
         4C4LuwaQjJ92iDnoF/2g2+yr/zlp66jJnYW584PzDcYZ3q3UzL2CHoBAYy7qrAvXyfL1
         E4yRV87P+cqesBbXhJHvFr8rLGS95fj+rG4LwspTc+BoXV6K2Wsfifb4HNzlwSi9FEYT
         FvDfllxdAeNog9UgXXKwcsC5ADvlBPOsEYaquGDKry7Qciva+aYYbMxEyxwCHoqkLzOl
         A2kVF+a2O6gCtg+JpJ2OgObtESI/IudOD9wvlH8yT1wQyxntWkxhJmDiwXW8GlSKVcMg
         mj0g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=meKFuuzNnKij4dbiTRuQC+TR6VknQpwM7AYUlpmMz5o=;
        b=IUYlmwazLsVYLkkhnhMlOV+y2EAJyrkFDZKTFFruW+GUwpS8SBUF7pcZ7BV4NEOoM/
         onWKudAnPxTlCZyAIb7jD5T6AgQwYY0rIskwQPZrxHqbnkoYyobSmdZUQBXkQd/kSWTc
         6+xSFfFySHMTwqVcPIhfBTjuNinOL+qPmJswHeolBYtL+kJO9aK23fODgOl/UI7HIS27
         zfuSzVSI3GCE1+pRpe6S30seMQAFReZopKpQMlhJtQVz0GDeUm5TrlsuDebCw9uBiPjZ
         YvrJlQqLkmK1OACQBcJ/eAID/1Mfc/2mVplIlFtWWU96eSm6z4pqQzWcCVWxflbsrVsT
         QtAg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=p0YzT8Vu;
       spf=pass (google.com: domain of maennich@google.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=maennich@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=meKFuuzNnKij4dbiTRuQC+TR6VknQpwM7AYUlpmMz5o=;
        b=JKCygWDv4B64MMPJQyP1BgbrFkVZEGjv1xudPFm1ozwSVsIWdpRiDdV5SwK42SMwst
         /sCBMKiBI3lw6LVb94jrrYcJp5FMxyP2O6qjR/wiw8Kc/bVIxYDp463YGwRi2lid4aY4
         nk0ijtYeYNQDnxncrqp1CyiqiWUg680ueDtWo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=meKFuuzNnKij4dbiTRuQC+TR6VknQpwM7AYUlpmMz5o=;
        b=rcoHaFVDLUqOUUDFmGY2R4z/5bwtCtQzFoxvSGBNFc0TjXCSQliwEkC0EJl1+DnMKi
         SJuL/xjdPeuAAZnd9xg42CF/HzvMtPPXtqqAA0QqeNbV1ZKzXzJvVW0/UA/hdHgltL8c
         u2+cEqP2ThGCFhMSgddVItk39baWznRnZ9Iedou4o3lnrxMPMvfkmTIyRMQLcnBR5NA1
         GvSHUVSvsGJfx2z6NVtIXDFRF20ZQMPpJyWuSabF1j0cQaKCd4tr99H0QwQIGgfcmQkN
         eM6fJgfP4RK6hlcc3FIqGmlmUYgmF0Hb2rLb1X0M5ShkCLUktOwt5RnTzhEibESdrAPB
         Objw==
X-Gm-Message-State: APjAAAWCFjHM3spTNGUouNOXyD9BArUXP689xHi9w29A9/MBSESKVsvW
	d08ST/YQe8v7+WzDZ12Gyeav2Q==
X-Google-Smtp-Source: APXvYqxhgIg31wYUOjdIXYUF/eTzVEWCBimca9KcRdM2F3BCkYmK+t3xkE6TAqUvSFxJGvuODIfMEg==
X-Received: by 2002:adf:f5c5:: with SMTP id k5mr8611827wrp.42.1566916882876;
        Tue, 27 Aug 2019 07:41:22 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a5d:5001:: with SMTP id e1ls5469219wrt.16.gmail; Tue, 27 Aug
 2019 07:41:22 -0700 (PDT)
X-Received: by 2002:a5d:658b:: with SMTP id q11mr4292107wru.211.1566916882114;
        Tue, 27 Aug 2019 07:41:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566916882; cv=none;
        d=google.com; s=arc-20160816;
        b=JGivZ66W7BuO00stEhDfQc+T3k8OLhWkez/r4nNn8SlwDvFE4asFQz2yLP0daO7uBe
         vap92+WHO1mW9KYhEfOSzcKGeso8cU1ocaztBQHj3mRHIFtatdE0jSGWW+tqwhOkgI5x
         FcDsc1/WxJqufyjjKYHO6B0hSWCJyl8PimmHwxhPPJoGnlbanLhXNAnJU1ZWdNbGUt+T
         1+UKtiq3uJDdMdERxeJLuF9q+rdobEwGL5K/plYOpkeyKouGUo9YeVGw8LHkp4c/KCWa
         w6nXKgiLxBdIlUpEPutDid99wUKDE6BizHTMaX675a4Qgd82y9Z4+SfBt4vMiK0oyzrm
         q06Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=7diyQC6Ra4+NFHhs8549xmFWYt9LcIpwPAa6izWd3FM=;
        b=dFuRNAXnaYZtBXYRt4L8cRMDTuWQMxOVubF7qFdb6T6vWXWz2riITBtFFKDRI5sDiL
         uZbQakL3JvwT7EWbXEtoFKrRm0XojQWle7iNT5zXbsIRgJEKm3IL6KzuvlpCP/Ly+H2+
         5hFaQqSQi9jNDIKSmj/37gLW2tjNrfrMx9iV0SRbI/oT8uQX3gvDf106PuRZlWFa8nLa
         J5qx9jLIkQqB98oN9RIqCnuM+suhidNrxHDLiSRejKUH6hUkwUutSRNjVr28q/3oq6C3
         s+cy+pMZizazl4/Ev+9NxQqEb3lRHDUzV2AhEMymjoayfwr4ZFHdVKopwSu7lbbB3RB/
         NLSw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=p0YzT8Vu;
       spf=pass (google.com: domain of maennich@google.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=maennich@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id z22sor1947275wmk.9.2019.08.27.07.41.22
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 27 Aug 2019 07:41:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of maennich@google.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a1c:c706:: with SMTP id x6mr29541988wmf.104.1566916881354;
        Tue, 27 Aug 2019 07:41:21 -0700 (PDT)
Received: from google.com ([2a00:79e0:d:210:e8f7:125b:61e9:733d])
        by smtp.gmail.com with ESMTPSA id o14sm26888491wrg.64.2019.08.27.07.41.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Aug 2019 07:41:20 -0700 (PDT)
Date: Tue, 27 Aug 2019 15:41:17 +0100
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
Message-ID: <20190827144117.GB102829@google.com>
References: <20190813121733.52480-1-maennich@google.com>
 <20190821114955.12788-1-maennich@google.com>
 <20190821114955.12788-5-maennich@google.com>
 <20190826162138.GA31739@linux-8ccs>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20190826162138.GA31739@linux-8ccs>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: maennich@google.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=p0YzT8Vu;       spf=pass
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

On Mon, Aug 26, 2019 at 06:21:38PM +0200, Jessica Yu wrote:
>+++ Matthias Maennich [21/08/19 12:49 +0100]:
>>Add support for symbols that are exported into namespaces. For that,
>>extract any namespace suffix from the symbol name. In addition, emit a
>>warning whenever a module refers to an exported symbol without
>>explicitly importing the namespace that it is defined in. This patch
>>consistently adds the namespace suffix to symbol names exported into
>>Module.symvers.
>>
>>Example warning emitted by modpost in case of the above violation:
>>
>>WARNING: module ums-usbat uses symbol usb_stor_resume from namespace
>>USB_STORAGE, but does not import it.
>>
>>Co-developed-by: Martijn Coenen <maco@android.com>
>>Signed-off-by: Martijn Coenen <maco@android.com>
>>Reviewed-by: Joel Fernandes (Google) <joel@joelfernandes.org>
>>Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>>Signed-off-by: Matthias Maennich <maennich@google.com>
>>---
>>scripts/mod/modpost.c | 91 +++++++++++++++++++++++++++++++++++++------
>>scripts/mod/modpost.h |  7 ++++
>>2 files changed, 87 insertions(+), 11 deletions(-)
>>
>>diff --git a/scripts/mod/modpost.c b/scripts/mod/modpost.c
>>index f277e116e0eb..538bb24ffee3 100644
>>--- a/scripts/mod/modpost.c
>>+++ b/scripts/mod/modpost.c
>>@@ -164,6 +164,7 @@ struct symbol {
>>	struct module *module;
>>	unsigned int crc;
>>	int crc_valid;
>>+	const char *namespace;
>>	unsigned int weak:1;
>>	unsigned int vmlinux:1;    /* 1 if symbol is defined in vmlinux */
>>	unsigned int kernel:1;     /* 1 if symbol is from kernel
>>@@ -233,6 +234,37 @@ static struct symbol *find_symbol(const char *name)
>>	return NULL;
>>}
>>
>>+static bool contains_namespace(struct namespace_list *list,
>>+			       const char *namespace)
>>+{
>>+	struct namespace_list *ns_entry;
>>+
>>+	for (ns_entry = list; ns_entry != NULL; ns_entry = ns_entry->next)
>>+		if (strcmp(ns_entry->namespace, namespace) == 0)
>>+			return true;
>>+
>>+	return false;
>>+}
>>+
>>+static void add_namespace(struct namespace_list **list, const char *namespace)
>>+{
>>+	struct namespace_list *ns_entry;
>>+
>>+	if (!contains_namespace(*list, namespace)) {
>>+		ns_entry = NOFAIL(malloc(sizeof(struct namespace_list) +
>>+					 strlen(namespace) + 1));
>>+		strcpy(ns_entry->namespace, namespace);
>>+		ns_entry->next = *list;
>>+		*list = ns_entry;
>>+	}
>>+}
>>+
>>+static bool module_imports_namespace(struct module *module,
>>+				     const char *namespace)
>>+{
>>+	return contains_namespace(module->imported_namespaces, namespace);
>>+}
>>+
>>static const struct {
>>	const char *str;
>>	enum export export;
>>@@ -312,6 +344,22 @@ static enum export export_from_sec(struct elf_info *elf, unsigned int sec)
>>		return export_unknown;
>>}
>>
>>+static const char *sym_extract_namespace(const char **symname)
>>+{
>>+	size_t n;
>>+	char *dupsymname;
>>+
>>+	n = strcspn(*symname, ".");
>>+	if (n < strlen(*symname) - 1) {
>>+		dupsymname = NOFAIL(strdup(*symname));
>>+		dupsymname[n] = '\0';
>>+		*symname = dupsymname;
>>+		return dupsymname + n + 1;
>>+	}
>>+
>>+	return NULL;
>>+}
>>+
>>/**
>> * Add an exported symbol - it may have already been added without a
>> * CRC, in this case just update the CRC
>>@@ -319,16 +367,18 @@ static enum export export_from_sec(struct elf_info *elf, unsigned int sec)
>>static struct symbol *sym_add_exported(const char *name, struct module *mod,
>>				       enum export export)
>>{
>>-	struct symbol *s = find_symbol(name);
>>+	const char *symbol_name = name;
>>+	const char *namespace = sym_extract_namespace(&symbol_name);
>>+	struct symbol *s = find_symbol(symbol_name);
>>
>>	if (!s) {
>>-		s = new_symbol(name, mod, export);
>>+		s = new_symbol(symbol_name, mod, export);
>>+		s->namespace = namespace;
>>	} else {
>>		if (!s->preloaded) {
>>-			warn("%s: '%s' exported twice. Previous export "
>>-			     "was in %s%s\n", mod->name, name,
>>-			     s->module->name,
>>-			     is_vmlinux(s->module->name) ?"":".ko");
>>+			warn("%s: '%s' exported twice. Previous export was in %s%s\n",
>>+			     mod->name, symbol_name, s->module->name,
>>+			     is_vmlinux(s->module->name) ? "" : ".ko");
>>		} else {
>>			/* In case Module.symvers was out of date */
>>			s->module = mod;
>>@@ -1943,6 +1993,7 @@ static void read_symbols(const char *modname)
>>	const char *symname;
>>	char *version;
>>	char *license;
>>+	char *namespace;
>>	struct module *mod;
>>	struct elf_info info = { };
>>	Elf_Sym *sym;
>>@@ -1974,6 +2025,12 @@ static void read_symbols(const char *modname)
>>		license = get_next_modinfo(&info, "license", license);
>>	}
>>
>>+	namespace = get_modinfo(&info, "import_ns");
>>+	while (namespace) {
>>+		add_namespace(&mod->imported_namespaces, namespace);
>>+		namespace = get_next_modinfo(&info, "import_ns", namespace);
>>+	}
>>+
>>	for (sym = info.symtab_start; sym < info.symtab_stop; sym++) {
>>		symname = remove_dot(info.strtab + sym->st_name);
>>
>>@@ -2118,6 +2175,13 @@ static int check_exports(struct module *mod)
>>			basename++;
>>		else
>>			basename = mod->name;
>>+
>>+		if (exp->namespace &&
>>+		    !module_imports_namespace(mod, exp->namespace)) {
>>+			warn("module %s uses symbol %s from namespace %s, but does not import it.\n",
>>+			     basename, exp->name, exp->namespace);
>>+		}
>>+
>>		if (!mod->gpl_compatible)
>>			check_for_gpl_usage(exp->export, basename, exp->name);
>>		check_for_unused(exp->export, basename, exp->name);
>>@@ -2395,16 +2459,21 @@ static void write_dump(const char *fname)
>>{
>>	struct buffer buf = { };
>>	struct symbol *symbol;
>>+	const char *namespace;
>>	int n;
>>
>>	for (n = 0; n < SYMBOL_HASH_SIZE ; n++) {
>>		symbol = symbolhash[n];
>>		while (symbol) {
>>-			if (dump_sym(symbol))
>>-				buf_printf(&buf, "0x%08x\t%s\t%s\t%s\n",
>>-					symbol->crc, symbol->name,
>>-					symbol->module->name,
>>-					export_str(symbol->export));
>>+			if (dump_sym(symbol)) {
>>+				namespace = symbol->namespace;
>>+				buf_printf(&buf, "0x%08x\t%s%s%s\t%s\t%s\n",
>>+					   symbol->crc, symbol->name,
>>+					   namespace ? "." : "",
>>+					   namespace ? namespace : "",
>
>I think it might be cleaner to just have namespace be a separate
>field in Module.symvers, rather than appending a dot and the
>namespace at the end of a symbol name. Maybe something like
>
>   <crc> <symbol_name> <namespace> <module>
>
>For symbols without a namespace, we could just have "", with all
>fields delimited by tabs. This is just a stylistic suggestion, what do
>you think?

I thought of something like that initially, but did not do it to not
break users of this file. But as I am anyway breaking users by changing
the symbol name into symbol.NS, I might as well do it as you suggested.
Since read_dump() also knew already how to extract the namespaces from
symbol.NS, it had already worked without a change to the reading code
of modpost. Are there any other consumers of Module.symvers that we
should be aware of?

>Regardless of the chosen format, I think we need to document how
>namespaces are represented in Documentation/kbuild/modules.rst, where
>it describes the Module.symvers format.

Agreed. I will update the documentation. It anyway needs an update.

Cheers,
Matthias

>>+					   symbol->module->name,
>>+					   export_str(symbol->export));
>>+			}
>>			symbol = symbol->next;
>>		}
>>	}
>>diff --git a/scripts/mod/modpost.h b/scripts/mod/modpost.h
>>index 8453d6ac2f77..9626bf3e7424 100644
>>--- a/scripts/mod/modpost.h
>>+++ b/scripts/mod/modpost.h
>>@@ -109,6 +109,11 @@ buf_printf(struct buffer *buf, const char *fmt, ...);
>>void
>>buf_write(struct buffer *buf, const char *s, int len);
>>
>>+struct namespace_list {
>>+	struct namespace_list *next;
>>+	char namespace[0];
>>+};
>>+
>>struct module {
>>	struct module *next;
>>	const char *name;
>>@@ -121,6 +126,8 @@ struct module {
>>	struct buffer dev_table_buf;
>>	char	     srcversion[25];
>>	int is_dot_o;
>>+	// Actual imported namespaces
>>+	struct namespace_list *imported_namespaces;
>>};
>>
>>struct elf_info {
>>-- 
>>2.23.0.rc1.153.gdeed80330f-goog
>>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190827144117.GB102829%40google.com.
