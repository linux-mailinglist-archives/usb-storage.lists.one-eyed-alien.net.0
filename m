Return-Path: <usb-storage+bncBDMYPB44VAFRB3XB6TVAKGQE7WEU4ZY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x845.google.com (mail-qt1-x845.google.com [IPv6:2607:f8b0:4864:20::845])
	by mail.lfdr.de (Postfix) with ESMTPS id 999D197860
	for <lists+usb-storage@lfdr.de>; Wed, 21 Aug 2019 13:54:23 +0200 (CEST)
Received: by mail-qt1-x845.google.com with SMTP id e22sf2326817qtp.9
        for <lists+usb-storage@lfdr.de>; Wed, 21 Aug 2019 04:54:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566388462; cv=pass;
        d=google.com; s=arc-20160816;
        b=qmkNmp7WpDLczpq2Dpm2qQsvPKgRSEhh+FGzvztjdvnTfJn2Uf8XIGx7HoLLp9tHhy
         Qnnk3EoLmpoUkmrE2HuIjVdh9UH+ciQ2toApC42plKkA/i4t/3zBD4LnEmA4K0Muyltx
         /gZLymtm61BGs4GTzpKbztFWf7UKo4WbQlgUG5dkFraoHcAcwipwHg22St22pepRU+U+
         xvzgzUUDGd2Xi/MAwk3UxMegd+/Rk1FymeZScLC7us5FLFz3MOljbAPSKDJMfVcyEwma
         gXP3qzpj0OHKPYHErkICxgmsw5I/3qMR4wb8JAZRYWtZUnESzcdLTkwZ34TmwAroKaHo
         jaOg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=AjPJqAOyyjJ1Cg0nh1KQ1TN4Pqmws/VVN307Ft3MX5g=;
        b=Id1CSdB89x5n4R0MbdNUmxJN35gctRIZ9z9wl+gy9eAhRA4ljxB6k9wqsmBToRAp8b
         /aTH8VtTCt3D+P2O4J5LCMJT1wPVbJIu9fn3KDXPpyeLbsB+ni6v/O+/xpq7pW3UdhyT
         eFFUE/JMAXzT3k4xooz6254lXOeHUZ58/tQB7UOdhe2xWvzHinxMnS4FQhMkMhz2q1ye
         u6OUCFL4RGH9qtAN/jtyzeBe+4Oixol+jqBUgK4kxV0JE74jZSl/0ym95aEZ3WXJ3lIG
         bt74roUnkke0gw9yI6/hyyAe8ufi0grVP1UmQtAvTMbLaH+aRE3X/30YtEVYfAxTutqk
         Jz/g==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ojkYQTn7;
       spf=pass (google.com: domain of 37tbdxqgkalqguyhhcwbaiiafy.wig@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=37TBdXQgKALQgUYhhcWbaiiafY.Wig@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AjPJqAOyyjJ1Cg0nh1KQ1TN4Pqmws/VVN307Ft3MX5g=;
        b=W3k+UV6JUomaSxo1lc35hD8wNMiykb3U8Opyoid7VUNQsluQoOGRYgBxSBoGGIS1g2
         I+v+Nq2XJAINgqwOqjD9JuFOYGY8n+QmIZXWYKEwkkD9qUq6JubCEjtJM63LOZMq95Hp
         GVuL1xB7YnsLik6h/aTfdkQu3tXL7mIctbeTg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AjPJqAOyyjJ1Cg0nh1KQ1TN4Pqmws/VVN307Ft3MX5g=;
        b=JFMFCb8LmspOEY1uRsB6CVAB0GGUSSUwoCnriLqM+0Wh0EY9er8/atbzkZ5n3JIY4b
         1FKzRJ7J/6W3qEdD++oGv84PXqI1yEA37FnXODwHeT8UFN2x+AqIcRpo5+LbYcyiQjdR
         1V555b0vwwrP3vZwD4mBZPIkBvtOWVPW4nP7oLUDCELXq4Ot3uxswVRL119KWoPIFSPN
         m1DCVYwOauVH/HZm/IdM/XAvXb0IKP4qGVgs5Wc5R+kvR0bpDfb3CgvxWI0/Wxgnr0lx
         i3GnN9z1pu1jjyZgp83yxS7jD8AjYGF60Jo4nEksA0rT2fbg1+Czqqysio5KGQ8iip0M
         Z06g==
X-Gm-Message-State: APjAAAXKdINOgsGr3XKrfHhiPu/DoXJJSIfW6/w4NMtjk1JZV/76WjNM
	DfK7jalGQZxRQc7ohCY1NaDBUA==
X-Google-Smtp-Source: APXvYqy3js+yh3v3hFJp0SzINFgF674XnKkUFqm4ziBawtzahM9zN33d+9ZovU4tYxfvCdaxBpopww==
X-Received: by 2002:a37:4d16:: with SMTP id a22mr24231505qkb.482.1566388462542;
        Wed, 21 Aug 2019 04:54:22 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac8:6654:: with SMTP id j20ls292908qtp.5.gmail; Wed, 21 Aug
 2019 04:54:22 -0700 (PDT)
X-Received: by 2002:ac8:5491:: with SMTP id h17mr30572859qtq.227.1566388462302;
        Wed, 21 Aug 2019 04:54:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566388462; cv=none;
        d=google.com; s=arc-20160816;
        b=IhZMXzfCF1hzEZz3MzxDBATI3+TdvVAg0+9z0usG3Vu/pW5sWJy6pnyZPOAiV4ps+T
         IRxeMWMjc09qeoC8bvU8Rb75tpPYIIpPCC0sWwn/9KEqFLDEE+2ntQqKbvMFSiBdo8vF
         8Rk01OEVQBgAF6yHztz5mqyFw8c2Xuio4i3wW1t+DlIQx7drrBJ7YVvEFIn8OdGxr4Pz
         Ap/u0WOLfDJmQDNl+SxtyDY2sTnOqCZcFQ29D8aPQXymn+IS9/VmLKugbXpafRYRQj2p
         VydN7X/fuiZteMQe7DuoiXAcdjUouJRENJEmZJpyIEH8XiLEy9MsJhuoWF8DNRMJ2tgE
         LN6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=heDLmLkB+fjtN8h+C63fhpjDHtJz/7QA8MMNDS5S1pM=;
        b=OWwXF5+FnI7gLlK+/vmRyPjs1LoivBbJVGQWFcbB5JpjTmmsna9zSDrjud0MyDqchq
         Q9DNBOjF2bYUgfJKX1ZlNQd53np0IHnnh6AfFC42JVnvKRz9Hoy9F9PsgKiY5UAzXuf+
         fPZ1G4ImNIjvMmu6VXo6+vVElfyS/9j0wFQvEmrcvsqJs6m/ND6NlAw8omeCL0eYuBhi
         4aNvkoAsUBpkIgULP9ga4FZv4hmEPYQIR21zX3Vkk/vEhjfv9GVJ/lynAGZ0/7qBB/MB
         OFRjzX+1IWbM9/+9f4WKi0B5IH81bElqDzQf0ugSF/LZiZjCBGeo7Yhw62SqZg5zG8eE
         QKmQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ojkYQTn7;
       spf=pass (google.com: domain of 37tbdxqgkalqguyhhcwbaiiafy.wig@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=37TBdXQgKALQgUYhhcWbaiiafY.Wig@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f73.google.com (mail-sor-f73.google.com. [209.85.220.73])
        by mx.google.com with SMTPS id 28sor27476490qtw.4.2019.08.21.04.54.22
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 21 Aug 2019 04:54:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of 37tbdxqgkalqguyhhcwbaiiafy.wig@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) client-ip=209.85.220.73;
X-Received: by 2002:ac8:2955:: with SMTP id z21mr30871117qtz.204.1566388461804;
 Wed, 21 Aug 2019 04:54:21 -0700 (PDT)
Date: Wed, 21 Aug 2019 12:49:19 +0100
In-Reply-To: <20190821114955.12788-1-maennich@google.com>
Message-Id: <20190821114955.12788-5-maennich@google.com>
Mime-Version: 1.0
References: <20190813121733.52480-1-maennich@google.com> <20190821114955.12788-1-maennich@google.com>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [usb-storage] [PATCH v3 04/11] modpost: add support for symbol namespaces
From: "'Matthias Maennich' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: linux-kernel@vger.kernel.org
Cc: kernel-team@android.com, maennich@google.com, arnd@arndb.de, 
	geert@linux-m68k.org, gregkh@linuxfoundation.org, hpa@zytor.com, 
	jeyu@kernel.org, joel@joelfernandes.org, kstewart@linuxfoundation.org, 
	linux-arch@vger.kernel.org, linux-kbuild@vger.kernel.org, 
	linux-m68k@lists.linux-m68k.org, linux-modules@vger.kernel.org, 
	linux-scsi@vger.kernel.org, linux-usb@vger.kernel.org, 
	lucas.de.marchi@gmail.com, maco@android.com, maco@google.com, 
	michal.lkml@markovi.net, mingo@redhat.com, oneukum@suse.com, 
	pombredanne@nexb.com, sam@ravnborg.org, sspatil@google.com, 
	stern@rowland.harvard.edu, tglx@linutronix.de, 
	usb-storage@lists.one-eyed-alien.net, x86@kernel.org, 
	yamada.masahiro@socionext.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maennich@google.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ojkYQTn7;       spf=pass
 (google.com: domain of 37tbdxqgkalqguyhhcwbaiiafy.wig@flex--maennich.bounces.google.com
 designates 209.85.220.73 as permitted sender) smtp.mailfrom=37TBdXQgKALQgUYhhcWbaiiafY.Wig@flex--maennich.bounces.google.com;
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190821114955.12788-5-maennich%40google.com.
