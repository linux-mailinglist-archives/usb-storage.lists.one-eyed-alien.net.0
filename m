Return-Path: <usb-storage+bncBDMYPB44VAFRBRUDXLVQKGQEY7R2UTQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yw1-xc48.google.com (mail-yw1-xc48.google.com [IPv6:2607:f8b0:4864:20::c48])
	by mail.lfdr.de (Postfix) with ESMTPS id 29722A6C48
	for <lists+usb-storage@lfdr.de>; Tue,  3 Sep 2019 17:07:52 +0200 (CEST)
Received: by mail-yw1-xc48.google.com with SMTP id a12sf13552860ywm.10
        for <lists+usb-storage@lfdr.de>; Tue, 03 Sep 2019 08:07:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567523271; cv=pass;
        d=google.com; s=arc-20160816;
        b=nNAot0kGJ1nTpbd7QXsls5nqYSqe0ei70YrQwzLHFKRvgJMjcrjkIBiNt04pgDw7TK
         xjueVgzAJ8+xwkRHMkto4Nudq3WQlGNz4ZE7FcF7m6tCSZ4xr93798WrWaLpDc42JGJN
         VEmzvKAaWH4LH1Z49MwJEfpRF6ve6B3hRaptV7AS0zzIzk/C7wu8D7zdUZkEGKF2H8NY
         aIdZU/8T2BGErnKpZlkhg+yE8RrG+/U7M98AdMxLyDA8xelJAurt8pdaKz3cO6E+vOK4
         20HbLvLyOKdFHW2lBQ+tNk24lf9BLGvkOghSoIdTMga0ndAwlxwgDIHmJGCAKvyh69JE
         dV+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=ljHbZw4+HDf3R7q97wNSypg1M+rCfz+8HVuQAt7zBEw=;
        b=ItELtbxNW4NCZLD9cmHPMdrE+hSI1A3jLbkOFk1A/S891YMxqFZFh2t+Zsk6JUPLfJ
         eRYlpYmsNSdSwxGNqBQGae/XNhsjQDsnWXvCtA4OLQ13oe2IjjFnfY0tVhX8Nam4shmK
         KhLg12XjvsswqQe+MpDCslHEOA+bVcg7WeTeYsL47fVFhHk1R8TuNvTZXuAaM/RYYxOQ
         5cmvheK8NW+Hvdc7FmP667Ms0XdyUZeQTtv2WwkI8oS89yqTWJM15lLFnbFIXuyZ8TJB
         30Yis9Yd0zF8IBbrDp3ArVLc3bFzZx3y49CJezZKENxlh2kZp1d8Xbqe/kKULXUfjm0n
         KFLQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="OehgC/Qp";
       spf=pass (google.com: domain of 3xofuxqgkahuftxggbvazhhzex.vhf@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=3xoFuXQgKAHUfTXggbVaZhhZeX.Vhf@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ljHbZw4+HDf3R7q97wNSypg1M+rCfz+8HVuQAt7zBEw=;
        b=GJlyRwce9dV0PzTq8EJirbY7YJFO8y4yPLyArDsg7OTCO/kK+m0nZBCB0b/uNkvOL5
         xqirxTgPVJ5+r8337SzYTryWhG3nswMRx26Naa6iTCTa8P9lJuSNk1R3xzSVPL34DIzI
         dcNiLqdkIBuFB6cJe2euqfzrzu/lpHeegbNKI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ljHbZw4+HDf3R7q97wNSypg1M+rCfz+8HVuQAt7zBEw=;
        b=b6mONEoLoQJCbE6pE8VfXeYfKqIWx0S2b2U5XP6/4k57T1xef2G5mGYJd+MnSmlglw
         BunwmsxAMVBwuRNqtbWLk5kUn1kLg2WOcNNfKBUwlyicPpTeLjfw3swQZHCPG8CH/EIv
         XZSJiHOho9OrUb5vFWN2ziKyuSasrBluym81Wt6gLeNs/NkLzFZiaUIWfd8ylTu+81if
         iw++0xzv+UuQuCUNFbSw9gWLiWi4OTbkj5NIQwS0I/4/uiAcNQxyA/oE8SOHcHTfWgQ3
         0BpAh8FWSMueqKQkNulsnfc3ZvibLyzV0oiWDIFc4hvw7nlO5d/oCtetNOhSyFytA5ou
         jqGA==
X-Gm-Message-State: APjAAAWmhW+bvDg+l1EWV8jgBcfkwNwxPL2t0lluXFOIi4lHRX11Aq3Z
	iicMmy+nB6nJ5KpkEEB8Pnf5Xw==
X-Google-Smtp-Source: APXvYqw/Of0hdgxBMv2FVjdPUfstg8JE6UF8kKThlBiB43gIUrgj713ay67AUP2OVJJYm9oycGazVA==
X-Received: by 2002:a0d:ca12:: with SMTP id m18mr25283274ywd.511.1567523270922;
        Tue, 03 Sep 2019 08:07:50 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a25:77c5:: with SMTP id s188ls2395459ybc.6.gmail; Tue, 03
 Sep 2019 08:07:50 -0700 (PDT)
X-Received: by 2002:a25:b3cc:: with SMTP id x12mr23908372ybf.321.1567523270633;
        Tue, 03 Sep 2019 08:07:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567523270; cv=none;
        d=google.com; s=arc-20160816;
        b=Ny9RnyAS8+XjSJ2TExKgUgTyqlHOrrpIU2hrT42qdV9Jq4FQzGwg3aa1Kct3mNilbY
         kL9sk7jV5+HNkmh3B/7C+vCS9pP8hglnjPRGrIUo6+Iwdu6lnmeulsn2C5AKFBg1ZG9F
         DmHiDYFkTTACbjN34EJNrn20yegoYHFWs7gFnnAmCvittuwlq+EN+TCpzPgP+DinEO4O
         UOVRUAxMeu+ufymNpNjY4DLLho0R6bLSzS9eEGumtkEHBx7Ff3zBmZWQ4V6NRU56G0V5
         UNyERK7/U+YCFWkhEgULOb5KQNidnQTLnCpeFboPVj2f3koM4ptyHiCOgZxYb3L8TEeR
         luJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=PXDMDCBfc2xecCOj15IRjy6gG7tFhf1boblcojHoIqc=;
        b=a+jW4IzwTs9AXgl6nH7peAJDlvSyixrWAQPXrAOk5qRkiwPz72hqC6Yj60qorbo3im
         c+0dm1DC3xZwX5ztMH7hw7RfnxvJhsY3I6G4rSW8IoK/oAP3/ynRXiF5gJ9oOngtXtiQ
         kqhs5c5YyBcXrO0gTCMYiNqENNuGjM2rD3Q/UKos76mapscM+pHgVQtC3OJTpIvI8G4R
         rEMm+zCoGheIi146k1S6Go+BSllLpoJY3fXNU+57No30V0qWoBzpnO+sSVDf2fusc1IE
         7ziwFNIxqGgUkYtp27Xx6vOeSRnsyXdNVthC6eXSiryYdeLULqPSj6k+2DhK8EdxKipy
         JLaw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="OehgC/Qp";
       spf=pass (google.com: domain of 3xofuxqgkahuftxggbvazhhzex.vhf@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=3xoFuXQgKAHUfTXggbVaZhhZeX.Vhf@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f73.google.com (mail-sor-f73.google.com. [209.85.220.73])
        by mx.google.com with SMTPS id p17sor10732553yba.155.2019.09.03.08.07.50
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 03 Sep 2019 08:07:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3xofuxqgkahuftxggbvazhhzex.vhf@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) client-ip=209.85.220.73;
X-Received: by 2002:a25:6191:: with SMTP id v139mr25130367ybb.396.1567523270130;
 Tue, 03 Sep 2019 08:07:50 -0700 (PDT)
Date: Tue,  3 Sep 2019 16:06:35 +0100
In-Reply-To: <20190903150638.242049-1-maennich@google.com>
Message-Id: <20190903150638.242049-10-maennich@google.com>
Mime-Version: 1.0
References: <20180716122125.175792-1-maco@android.com> <20190903150638.242049-1-maennich@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [usb-storage] [PATCH v4 09/12] docs: Add documentation for Symbol Namespaces
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
 header.i=@google.com header.s=20161025 header.b="OehgC/Qp";       spf=pass
 (google.com: domain of 3xofuxqgkahuftxggbvazhhzex.vhf@flex--maennich.bounces.google.com
 designates 209.85.220.73 as permitted sender) smtp.mailfrom=3xoFuXQgKAHUfTXggbVaZhhZeX.Vhf@flex--maennich.bounces.google.com;
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

Describe using Symbol Namespaces from a perspective of a user. I.e.
module authors or subsystem maintainers.

Signed-off-by: Matthias Maennich <maennich@google.com>
---
 Documentation/kbuild/namespaces.rst      | 154 +++++++++++++++++++++++
 Documentation/kernel-hacking/hacking.rst |  18 +++
 2 files changed, 172 insertions(+)
 create mode 100644 Documentation/kbuild/namespaces.rst

diff --git a/Documentation/kbuild/namespaces.rst b/Documentation/kbuild/namespaces.rst
new file mode 100644
index 000000000000..982ed7b568ac
--- /dev/null
+++ b/Documentation/kbuild/namespaces.rst
@@ -0,0 +1,154 @@
+=================
+Symbol Namespaces
+=================
+
+The following document describes how to use Symbol Namespaces to structure the
+export surface of in-kernel symbols exported through the family of
+EXPORT_SYMBOL() macros.
+
+.. Table of Contents
+
+	=== 1 Introduction
+	=== 2 How to define Symbol Namespaces
+	   --- 2.1 Using the EXPORT_SYMBOL macros
+	   --- 2.2 Using the DEFAULT_SYMBOL_NAMESPACE define
+	=== 3 How to use Symbols exported in Namespaces
+	=== 4 Loading Modules that use namespaced Symbols
+	=== 5 Automatically creating MODULE_IMPORT_NS statements
+
+1. Introduction
+===============
+
+Symbol Namespaces have been introduced as a means to structure the export
+surface of the in-kernel API. It allows subsystem maintainers to partition
+their exported symbols into separate namespaces. That is useful for
+documentation purposes (think of the SUBSYSTEM_DEBUG namespace) as well as for
+limiting the availability of a set of symbols for use in other parts of the
+kernel. As of today, modules that make use of symbols exported into namespaces,
+are required to import the namespace. Otherwise the kernel will, depending on
+its configuration, reject loading the module or warn about a missing import.
+
+2. How to define Symbol Namespaces
+==================================
+
+Symbols can be exported into namespace using different methods. All of them are
+changing the way EXPORT_SYMBOL and friends are instrumented to create ksymtab
+entries.
+
+2.1 Using the EXPORT_SYMBOL macros
+==================================
+
+In addition to the macros EXPORT_SYMBOL() and EXPORT_SYMBOL_GPL(), that allow
+exporting of kernel symbols to the kernel symbol table, variants of these are
+available to export symbols into a certain namespace: EXPORT_SYMBOL_NS() and
+EXPORT_SYMBOL_NS_GPL(). They take one additional argument: the namespace.
+Please note that due to macro expansion that argument needs to be a
+preprocessor symbol. E.g. to export the symbol `usb_stor_suspend` into the
+namespace `USB_STORAGE`, use::
+
+	EXPORT_SYMBOL_NS(usb_stor_suspend, USB_STORAGE);
+
+The corresponding ksymtab entry struct `kernel_symbol` will have the member
+`namespace` set accordingly. A symbol that is exported without a namespace will
+refer to `NULL`. There is no default namespace if none is defined. `modpost`
+and kernel/module.c make use the namespace at build time or module load time,
+respectively.
+
+2.2 Using the DEFAULT_SYMBOL_NAMESPACE define
+=============================================
+
+Defining namespaces for all symbols of a subsystem can be very verbose and may
+become hard to maintain. Therefore a default define (DEFAULT_SYMBOL_NAMESPACE)
+is been provided, that, if set, will become the default for all EXPORT_SYMBOL()
+and EXPORT_SYMBOL_GPL() macro expansions that do not specify a namespace.
+
+There are multiple ways of specifying this define and it depends on the
+subsystem and the maintainer's preference, which one to use. The first option
+is to define the default namespace in the `Makefile` of the subsystem. E.g. to
+export all symbols defined in usb-common into the namespace USB_COMMON, add a
+line like this to drivers/usb/common/Makefile::
+
+	ccflags-y += -DDEFAULT_SYMBOL_NAMESPACE=USB_COMMON
+
+That will affect all EXPORT_SYMBOL() and EXPORT_SYMBOL_GPL() statements. A
+symbol exported with EXPORT_SYMBOL_NS() while this definition is present, will
+still be exported into the namespace that is passed as the namespace argument
+as this argument has preference over a default symbol namespace.
+
+A second option to define the default namespace is directly in the compilation
+unit as preprocessor statement. The above example would then read::
+
+	#undef  DEFAULT_SYMBOL_NAMESPACE
+	#define DEFAULT_SYMBOL_NAMESPACE USB_COMMON
+
+within the corresponding compilation unit before any EXPORT_SYMBOL macro is
+used.
+
+3. How to use Symbols exported in Namespaces
+============================================
+
+In order to use symbols that are exported into namespaces, kernel modules need
+to explicitly import these namespaces. Otherwise the kernel might reject to
+load the module. The module code is required to use the macro MODULE_IMPORT_NS
+for the namespaces it uses symbols from. E.g. a module using the
+usb_stor_suspend symbol from above, needs to import the namespace USB_STORAGE
+using a statement like::
+
+	MODULE_IMPORT_NS(USB_STORAGE);
+
+This will create a `modinfo` tag in the module for each imported namespace.
+This has the side effect, that the imported namespaces of a module can be
+inspected with modinfo::
+
+	$ modinfo drivers/usb/storage/ums-karma.ko
+	[...]
+	import_ns:      USB_STORAGE
+	[...]
+
+
+It is advisable to add the MODULE_IMPORT_NS() statement close to other module
+metadata definitions like MODULE_AUTHOR() or MODULE_LICENSE(). Refer to section
+5. for a way to create missing import statements automatically.
+
+4. Loading Modules that use namespaced Symbols
+==============================================
+
+At module loading time (e.g. `insmod`), the kernel will check each symbol
+referenced from the module for its availability and whether the namespace it
+might be exported to has been imported by the module. The default behaviour of
+the kernel is to reject loading modules that don't specify sufficient imports.
+An error will be logged and loading will be failed with EINVAL. In order to
+allow loading of modules that don't satisfy this precondition, a configuration
+option is available: Setting MODULE_ALLOW_MISSING_NAMESPACE_IMPORTS=y will
+enable loading regardless, but will emit a warning.
+
+5. Automatically creating MODULE_IMPORT_NS statements
+=====================================================
+
+Missing namespaces imports can easily be detected at build time. In fact,
+modpost will emit a warning if a module uses a symbol from a namespace
+without importing it.
+MODULE_IMPORT_NS() statements will usually be added at a definite location
+(along with other module meta data). To make the life of module authors (and
+subsystem maintainers) easier, a script and make target is available to fixup
+missing imports. Fixing missing imports can be done with::
+
+	$ make nsdeps
+
+A typical scenario for module authors would be::
+
+	- write code that depends on a symbol from a not imported namespace
+	- `make`
+	- notice the warning of modpost telling about a missing import
+	- run `make nsdeps` to add the import to the correct code location
+
+For subsystem maintainers introducing a namespace, the steps are very similar.
+Again, `make nsdeps` will eventually add the missing namespace imports for
+in-tree modules::
+
+	- move or add symbols to a namespace (e.g. with EXPORT_SYMBOL_NS())
+	- `make` (preferably with an allmodconfig to cover all in-kernel
+	  modules)
+	- notice the warning of modpost telling about a missing import
+	- run `make nsdeps` to add the import to the correct code location
+
diff --git a/Documentation/kernel-hacking/hacking.rst b/Documentation/kernel-hacking/hacking.rst
index 5891a701a159..a3ddb213a5e1 100644
--- a/Documentation/kernel-hacking/hacking.rst
+++ b/Documentation/kernel-hacking/hacking.rst
@@ -594,6 +594,24 @@ internal implementation issue, and not really an interface. Some
 maintainers and developers may however require EXPORT_SYMBOL_GPL()
 when adding any new APIs or functionality.
 
+:c:func:`EXPORT_SYMBOL_NS()`
+----------------------------
+
+Defined in ``include/linux/export.h``
+
+This is the variant of `EXPORT_SYMBOL()` that allows specifying a symbol
+namespace. Symbol Namespaces are documented in
+``Documentation/kbuild/namespaces.rst``.
+
+:c:func:`EXPORT_SYMBOL_NS_GPL()`
+--------------------------------
+
+Defined in ``include/linux/export.h``
+
+This is the variant of `EXPORT_SYMBOL_GPL()` that allows specifying a symbol
+namespace. Symbol Namespaces are documented in
+``Documentation/kbuild/namespaces.rst``.
+
 Routines and Conventions
 ========================
 
-- 
2.23.0.187.g17f5b7556c-goog

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190903150638.242049-10-maennich%40google.com.
