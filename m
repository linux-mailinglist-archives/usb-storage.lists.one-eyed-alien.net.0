Return-Path: <usb-storage+bncBDMYPB44VAFRBZHLZDVQKGQEGCGT6DI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x748.google.com (mail-qk1-x748.google.com [IPv6:2607:f8b0:4864:20::748])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BB41AB5E0
	for <lists+usb-storage@lfdr.de>; Fri,  6 Sep 2019 12:33:09 +0200 (CEST)
Received: by mail-qk1-x748.google.com with SMTP id k68sf5870167qkb.19
        for <lists+usb-storage@lfdr.de>; Fri, 06 Sep 2019 03:33:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567765988; cv=pass;
        d=google.com; s=arc-20160816;
        b=CE02elZoffnd3fc/JIuFMAIswZS3VPYxwTrkdwWPK+qVlqlHgj8e5YUSs5ODZqhI6D
         nZ2A2JtqiFlcJfVHbjGs79zqGlXbLTRkyWiiucOyXnOs7nao0mK7glJife5/BDTHdGdT
         EaD7rgq/IyvxIl4d4ftHTShqY1/Et5CHG8hoXA68IsXE1MdirkK4RnN02npCnTjxUvG4
         FCKUEuFF9m3VhsAfaeG8JeLANxOGa9mhpBW02zGdZCAqMoWplu6xxKTKw48ur1FpazUu
         eOfiISz5EdhFwIKA7/sFngKJmOvtWteWUo5lMFTGLkAuC/Cpuo1A6v7rEoRjEleCGJP7
         dM+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=nQA/qLdlef3CU0sgReKLVFOdx6kexPNTaQ/2wl1PdOg=;
        b=ErWbQWsLEmktsTEOPDRJsXuD3UYhvPjk+yQu3UVDq6nwlLQ+sebGgmwmz0o7kg9KR9
         +uRLyoo8ymn6UL1F5rogEtry3NnaaFh36X5Vcd8XaaNWx6Kd2apgAJPUypSwg9eV3q2X
         fyDJ1/ZI9UmemmHwcGSLbVVlGBGjiPnFPf5xsdKYOM1KCtMgV7ZBEhHZQ7LQIpYgPfQ6
         pDbqoJO3zsNGawvtWyn5Z23I2KeHeGeElKoMQIc1r1DNYamawvW3dF4Eob0Q6T/Pge7Q
         yjoLS388zimeJUPih1up/urUdeH0EFuYMKreN5t6X+s49bLE5FA07FM0Lcsoa+zKCFos
         T/qw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cZiGseyf;
       spf=pass (google.com: domain of 34zvyxqgkaaowkoxxsmrqyyqvo.myw@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=34zVyXQgKAAowkoxxsmrqyyqvo.myw@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nQA/qLdlef3CU0sgReKLVFOdx6kexPNTaQ/2wl1PdOg=;
        b=brrLP2keRxqvZwYiDO355RnOawUGvSLeVO1evT5hj6MZ2SQrlT9BP0QTtC4UP7Hrpb
         TuI0oeS5VynoUGgUuZnSR4RQG+kZ7zPbxHz5ph/8Uvt7IzIVonEzjHQ3iXwW6+JM02OE
         n2EQOYjz30TaoLbziZjJrbjbyn8CUS0VzfD0Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nQA/qLdlef3CU0sgReKLVFOdx6kexPNTaQ/2wl1PdOg=;
        b=sWTtngblSzsXE6SOayNeNxbDItMYe5J1IhwUA8zcazfrTLdUV0DSlsREbA0ybXrs0z
         FkNKiL+vihxTwrRi2VK4+YBx9KkCZLvUMU3hKJaLqJZp4NUy17GXzP58ENtvMJ+A9nV3
         51yJuXPAA/qo0OjHWaaAz4zmSejgCT7Obov8SML0ob9HTQmx9tDAGq9i4/HkAbFhb14u
         d8HNhZZH/PXpGM6lAoGnz2lffDBi5AM8HSiYiCluizNbE8zYSbm0r9keFmTg+fPvwdwa
         hL8pDf3yD7BGmZ/GmwfWh5mtfmxf7SPk/yO239a20rvjFOZcg1kKrgntayTuxaE05wof
         kVIQ==
X-Gm-Message-State: APjAAAV3mf5wIP9ZODPSy2iWtUnBzA6rVWzCmwfSv9RAuCrSk/P9rkMS
	Lqm6UQCOXBrjSU0jw4H/LYEpPA==
X-Google-Smtp-Source: APXvYqzP2YyhLJ0Fxm1YShQLRSEBwo0c8JQDBYeaabPFvhj8/6f4YYnHDFfAkZj2LetTsHNW/0vPbA==
X-Received: by 2002:a37:a089:: with SMTP id j131mr7742179qke.446.1567765988657;
        Fri, 06 Sep 2019 03:33:08 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a37:a853:: with SMTP id r80ls2103412qke.0.gmail; Fri, 06 Sep
 2019 03:33:08 -0700 (PDT)
X-Received: by 2002:a37:ac02:: with SMTP id e2mr8057195qkm.389.1567765988376;
        Fri, 06 Sep 2019 03:33:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567765988; cv=none;
        d=google.com; s=arc-20160816;
        b=VOzaqFvfU5URqdPHLbXDEYNb09vtmHmczELmWu7cdgYBBctD+KKxtPIy+GtKd537d4
         oh26Bv3OJijLVvDj6ZCNIc8qgmZ3N5/HiubyR9uPmMc9SqPyLxE6nrZ3bPxehBK/sk4+
         GuxDEoJsldVxEd1ZW2gdoY3Aoj4lnSzg4fAUAmHQIyNeE3QC8kx0X1TyGaOnGycuLoCh
         eUlmj5kavItfvb9qr6uQHO//5f3QowGfXKitOmJldCy8WFdGRM/ykHI2zVRE9P5gjC29
         Krx9N9K8W8Itn6I6fuK1wzaGphaErtrEwuWEbDvj1Z/L04pU4j3QVXDyyJIALZcIta2B
         HmEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=HSbsfWVVQztJZc+gKr3UHxvMR+zwYz1b7+HvG/QIJmo=;
        b=Fn+R2J4wDtRbcWvrOmTV221jbimVgPx0MJ8SchY6YgvOdYOtsrKOow/4ADHJH47Xzm
         m7GGAjYYOSN7GiB5aw4tec2qbmJgaAAkoALTFLxPixUNYdb126w24nSB0aLGLqY5YdqW
         IcqBWrjW7O8yzHzYGke02BNCKI5bKZ5DUAt9KGnqpkK7ulyvX7gEpYT/Hv+ptq8yOHpM
         b2eE0Q2S48EE71EZfwvR9Jh98hCpYW42VXSWWs/VuVeCLO2IXaUknTsgJM4ri4imi1va
         9ZUif1U6wBEA7l8dnL+tQH2WtMTfz3rD0puGaGFR+XL/hw0Qc/8kE+cb4mXMvs9CPVpk
         5w0g==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cZiGseyf;
       spf=pass (google.com: domain of 34zvyxqgkaaowkoxxsmrqyyqvo.myw@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=34zVyXQgKAAowkoxxsmrqyyqvo.myw@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f73.google.com (mail-sor-f73.google.com. [209.85.220.73])
        by mx.google.com with SMTPS id s7sor3318874qkg.163.2019.09.06.03.33.08
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Fri, 06 Sep 2019 03:33:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of 34zvyxqgkaaowkoxxsmrqyyqvo.myw@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) client-ip=209.85.220.73;
X-Received: by 2002:ae9:e219:: with SMTP id c25mr8159358qkc.234.1567765987998;
 Fri, 06 Sep 2019 03:33:07 -0700 (PDT)
Date: Fri,  6 Sep 2019 11:32:33 +0100
In-Reply-To: <20190906103235.197072-1-maennich@google.com>
Message-Id: <20190906103235.197072-10-maennich@google.com>
Mime-Version: 1.0
References: <20180716122125.175792-1-maco@android.com> <20190906103235.197072-1-maennich@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [usb-storage] [PATCH v5 09/11] docs: Add documentation for Symbol Namespaces
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
 header.i=@google.com header.s=20161025 header.b=cZiGseyf;       spf=pass
 (google.com: domain of 34zvyxqgkaaowkoxxsmrqyyqvo.myw@flex--maennich.bounces.google.com
 designates 209.85.220.73 as permitted sender) smtp.mailfrom=34zVyXQgKAAowkoxxsmrqyyqvo.myw@flex--maennich.bounces.google.com;
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

Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190906103235.197072-10-maennich%40google.com.
