Return-Path: <usb-storage+bncBDMYPB44VAFRBINHZPVAKGQE5OFI4CI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yb1-xb45.google.com (mail-yb1-xb45.google.com [IPv6:2607:f8b0:4864:20::b45])
	by mail.lfdr.de (Postfix) with ESMTPS id AD99C8BCC2
	for <lists+usb-storage@lfdr.de>; Tue, 13 Aug 2019 17:13:38 +0200 (CEST)
Received: by mail-yb1-xb45.google.com with SMTP id s17sf42158387ybg.15
        for <lists+usb-storage@lfdr.de>; Tue, 13 Aug 2019 08:13:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565709217; cv=pass;
        d=google.com; s=arc-20160816;
        b=z902NW07eoE7Ak5dgQ02eUAndLHYv46liubGr6QE8m0k8crg1wV6mlnJ1wsEGthWT3
         ZlA5GKC28OnnpaNawZM0rpdapLbytPaysSqqb4lfIZ4qL5i9XogJqJfk5zfo0Z9SPK2a
         3/07KjlWnC8A2PJGMKJNjcJ39xnYB5UGKdXPd2SPaL9kwlOcUPmTOfdCUEPvuNNeEM6r
         xaAqH/LNU3hQQ6od6/a3GK6CY+YPkK7RIYoi5ceDxQEAEMbwFTUsQMvmp19TC8erye95
         UoCUrKFcae/2fa4O1VTTjSN6BpwYTbxwZG7TH7HFBGeJj3dhxjyYyXuDx5q3RmTiG+WT
         SiHw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=GfJpuplzCcr7OTCARhQ0A3GTGYNifioQpAy6vJ0ANdk=;
        b=Gio8YN0iD2fR6PoD4x89CKCN5YZzduwL/lOzWzNfEawua1XWbh7RIXHiRnZComzTtk
         os+4jmSuwZJTrQUsQnJbI/yYV7PkZq1fPACgBsbtVO7aidOpBR4D6DC2Tdezo5Z1y+2h
         amKlZzPlS/q+h+nr3kZJJYI4E3/Vcj5IA9Bebg5eHFUNLpQqYSsVHoqeBeHDPHIn+ePv
         EHD+bmR+Owi791j4ZwGLuojXHUvIMgtHEnSrazuWXBxUYO46040Tg8mWM0Mnlo3gUTj5
         EvdYb5d25JMgKcP50HChJ5cppP2I0OHrUvdm7Gen/3WiKiFQ0l+S+o8w4kTxknmEZgqL
         o0JQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="OuyQ94/n";
       spf=pass (google.com: domain of 3yapsxqgkafoe26ffa498gg8d6.4ge@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=3yapSXQgKAFoE26FFA498GG8D6.4GE@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GfJpuplzCcr7OTCARhQ0A3GTGYNifioQpAy6vJ0ANdk=;
        b=W5PF8Bi0wNtr6ws2fcbTzq4ixb52mFOeK1rWQahGqQMFJh84u8HqbF2oZMzs4rW6SE
         78MkVG3rU7W7a++dJyFmrEqwu54CIuAar+UPI4Umbq2Tq7/9visbDX6RDzo77AKTt1pP
         nhxR0FGKJvtnZO8sPmhMXsRfeHi2T5xrf4418=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=GfJpuplzCcr7OTCARhQ0A3GTGYNifioQpAy6vJ0ANdk=;
        b=qgOf73Q1N53826NXNS7nEc9Ar0U0a4R5JigQTgqb6MXmmy8VFjgwD8Fkl+PQxFpn+t
         9X1wlJfb3qlmjr7+ATAc1Gz8ZM0BpWn9Qfp4HWXhhR1auz0kdB3s1ks4iA4LMzIcb9GU
         NNEUuqmPdhcAKrGq8jMB9hpv2sxXvbun64Yy39gu3freBHJQfL6q0KYLMKMGPWgEDjtU
         dJqdUKW1pmM5Q1VdzXnfe7P7mRmAxd/Xzo2XSmICWQKT4SixkwdHYVwb6k+ys9froXv+
         afPxiqKl9UCTiOwAZdXC60yedpUVd2cw6y4mRQVl65mfBnndPneoPKYiRSJN8myE78CP
         PEIg==
X-Gm-Message-State: APjAAAWuVdCOj2EMFqFrjFeiPwG0FdbTy8czAPxS3d+aR3adCnHKM5Gg
	hgMb3DYsXNFy4j5c4z1/PekVNA==
X-Google-Smtp-Source: APXvYqyHjshRplVQRhB31SvDWJ4r8asQ4FgnzUZ7GlCxFicG4RD9uqLjExqizKojp10MirprHK8DMw==
X-Received: by 2002:a81:4414:: with SMTP id r20mr9880755ywa.288.1565709217698;
        Tue, 13 Aug 2019 08:13:37 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a0d:eb83:: with SMTP id u125ls6556691ywe.10.gmail; Tue, 13
 Aug 2019 08:13:37 -0700 (PDT)
X-Received: by 2002:a81:1c9:: with SMTP id 192mr8448264ywb.395.1565709217428;
        Tue, 13 Aug 2019 08:13:37 -0700 (PDT)
Received: by 2002:a81:6e83:0:0:0:0:0 with SMTP id j125msywc;
        Tue, 13 Aug 2019 05:19:22 -0700 (PDT)
X-Received: by 2002:a25:c943:: with SMTP id z64mr29127434ybf.370.1565698762339;
        Tue, 13 Aug 2019 05:19:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565698762; cv=none;
        d=google.com; s=arc-20160816;
        b=ApThKKCuf1l4ud+ecD8jLuflYYWSL8nldqCKoFIqCUxjmWHBO3uWW9gQ4LyHKOgCjC
         QucOYNEePhA0HVk2HGfUI5LP5UnvwID6K1v7uZJi4YoYAgIX0AlJ3zKeSffNY6XHvS7V
         W+ZxrSq3PmmDTDPz84Nj6D8aEVVvNz5eCp2DBXNRirGriTulLkJKOxQzAmmgA1VRalfZ
         ye+m9YRh0V/sEN+DDbRoOuiKgb2RHJnrpeOKj1/jnLNqxg1oVExnyExbJ8Gb1QUFwWbV
         VINqzS4aXCDa7it5+Re+N1my12XkOqSh7X7E7gWSrkGhJz2/EQ63mkRtCj+mEeu2qTAT
         8DrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=HpxTJ+Mr7aDpwqzbuLs57072o/YccUWCimGiPU7phnE=;
        b=ZY/+TQLR8vSpsWraW/wHPD+7ZV9DtCB+O7zPGCJV6HF+jNPSK6eYNoJmbrLD13/0mS
         ezKGoyA5M95RZlIccMxMQmEOzGKUn1uifJqWvV8Fu6A9oarZ9lpyNg57PpTCnQxV7oQi
         envcJYtXOe0XLYCpvmew/b/MywZMTBZOCMuUTLYEMggaULJ0rPWlD0EwhNyeiyZsynTx
         st+m+F65zkhnYs+PFagoSs4Jw8He8Kb5ZolcFztAEdqUtBlwnXYPBCI/jelqnYEn79AD
         qDRgTEK+Xmpo6N4TG1aiOlPSezXcKzd5o+27wXNAmNLKgnYOqZyvbc6I0o8Un1BTVE0H
         JAKg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="OuyQ94/n";
       spf=pass (google.com: domain of 3yapsxqgkafoe26ffa498gg8d6.4ge@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=3yapSXQgKAFoE26FFA498GG8D6.4GE@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f73.google.com (mail-sor-f73.google.com. [209.85.220.73])
        by mx.google.com with SMTPS id o135sor7178403ywo.196.2019.08.13.05.19.22
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 13 Aug 2019 05:19:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3yapsxqgkafoe26ffa498gg8d6.4ge@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) client-ip=209.85.220.73;
X-Received: by 2002:a81:6a8a:: with SMTP id f132mr27823621ywc.358.1565698761694;
 Tue, 13 Aug 2019 05:19:21 -0700 (PDT)
Date: Tue, 13 Aug 2019 13:17:01 +0100
In-Reply-To: <20190813121733.52480-1-maennich@google.com>
Message-Id: <20190813121733.52480-5-maennich@google.com>
Mime-Version: 1.0
References: <20180716122125.175792-1-maco@android.com> <20190813121733.52480-1-maennich@google.com>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [usb-storage] [PATCH v2 04/10] modpost: add support for symbol namespaces
From: "'Matthias Maennich' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: linux-kernel@vger.kernel.org, maco@android.com
Cc: kernel-team@android.com, maennich@google.com, arnd@arndb.de, 
	geert@linux-m68k.org, gregkh@linuxfoundation.org, hpa@zytor.com, 
	jeyu@kernel.org, joel@joelfernandes.org, kstewart@linuxfoundation.org, 
	linux-arch@vger.kernel.org, linux-kbuild@vger.kernel.org, 
	linux-m68k@lists.linux-m68k.org, linux-modules@vger.kernel.org, 
	linux-scsi@vger.kernel.org, linux-usb@vger.kernel.org, 
	lucas.de.marchi@gmail.com, maco@google.com, michal.lkml@markovi.net, 
	mingo@redhat.com, oneukum@suse.com, pombredanne@nexb.com, sam@ravnborg.org, 
	sboyd@codeaurora.org, sspatil@google.com, stern@rowland.harvard.edu, 
	tglx@linutronix.de, usb-storage@lists.one-eyed-alien.net, x86@kernel.org, 
	yamada.masahiro@socionext.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maennich@google.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="OuyQ94/n";       spf=pass
 (google.com: domain of 3yapsxqgkafoe26ffa498gg8d6.4ge@flex--maennich.bounces.google.com
 designates 209.85.220.73 as permitted sender) smtp.mailfrom=3yapSXQgKAFoE26FFA498GG8D6.4GE@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Matthias Maennich <maennich@google.com>
Reply-To: Matthias Maennich <maennich@google.com>
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
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
Signed-off-by: Matthias Maennich <maennich@google.com>
---
 scripts/mod/modpost.c | 91 +++++++++++++++++++++++++++++++++++++------
 scripts/mod/modpost.h |  7 ++++
 2 files changed, 87 insertions(+), 11 deletions(-)

diff --git a/scripts/mod/modpost.c b/scripts/mod/modpost.c
index f277e116e0eb..538bb24ffee3 100644
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
@@ -312,6 +344,22 @@ static enum export export_from_sec(struct elf_info *elf, unsigned int sec)
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
@@ -319,16 +367,18 @@ static enum export export_from_sec(struct elf_info *elf, unsigned int sec)
 static struct symbol *sym_add_exported(const char *name, struct module *mod,
 				       enum export export)
 {
-	struct symbol *s = find_symbol(name);
+	const char *symbol_name = name;
+	const char *namespace = sym_extract_namespace(&symbol_name);
+	struct symbol *s = find_symbol(symbol_name);
 
 	if (!s) {
-		s = new_symbol(name, mod, export);
+		s = new_symbol(symbol_name, mod, export);
+		s->namespace = namespace;
 	} else {
 		if (!s->preloaded) {
-			warn("%s: '%s' exported twice. Previous export "
-			     "was in %s%s\n", mod->name, name,
-			     s->module->name,
-			     is_vmlinux(s->module->name) ?"":".ko");
+			warn("%s: '%s' exported twice. Previous export was in %s%s\n",
+			     mod->name, symbol_name, s->module->name,
+			     is_vmlinux(s->module->name) ? "" : ".ko");
 		} else {
 			/* In case Module.symvers was out of date */
 			s->module = mod;
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
@@ -2395,16 +2459,21 @@ static void write_dump(const char *fname)
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
+				buf_printf(&buf, "0x%08x\t%s%s%s\t%s\t%s\n",
+					   symbol->crc, symbol->name,
+					   namespace ? "." : "",
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
2.23.0.rc1.153.gdeed80330f-goog

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190813121733.52480-5-maennich%40google.com.
