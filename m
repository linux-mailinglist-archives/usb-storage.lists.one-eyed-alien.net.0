Return-Path: <usb-storage+bncBDMYPB44VAFRB57B6TVAKGQE6V7SF6A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-vs1-xe46.google.com (mail-vs1-xe46.google.com [IPv6:2607:f8b0:4864:20::e46])
	by mail.lfdr.de (Postfix) with ESMTPS id BBBEC97862
	for <lists+usb-storage@lfdr.de>; Wed, 21 Aug 2019 13:54:32 +0200 (CEST)
Received: by mail-vs1-xe46.google.com with SMTP id t76sf620489vst.16
        for <lists+usb-storage@lfdr.de>; Wed, 21 Aug 2019 04:54:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566388471; cv=pass;
        d=google.com; s=arc-20160816;
        b=0qE73Y+6QBjD8K8duXN31lovXKvNsfupaBXvn2R3rAaWAQdu3bkFIn6as6mUMfmAct
         JQA7C6sUTZTHuI/wCemcF3LOyVpKqR8+QP41J6oYNoPdbcWVd9aJr+xm2JthNg2+vxMo
         MZMWTaiHqtUlSNQ8JEN3fDbbd8qzeGnTldQmy9dGf9CeWPouwjWrdVu51clzxIUIcrvQ
         6rSxUQ+Nb5bjuWnGbxv5/o2SrVBY0YBrPYWKNGVzJtHPVy1BMcf1DBcgZt05mne+H7KC
         bz5E3MzVSwGhenH/XyIzIXFIf2CgWuKrFHDdXbHqoME+iK4C25qtAoWhO7C8tgvN1Sdj
         grGg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=ygDS4sVi80wyatPeAnLQ+q6Z3/ZGkDvh9YguMMZ8Wgw=;
        b=g32VevQR51CAm79+Y/o5EoG0786lHrho7zdOJb+WwmX9mgkCwynjMwhGNDXU/vJiRi
         YRfjNHT36ZH0yL/3HDxM2itZbIyYyA55p2IQbLg2EnKcvZBBHU4lN9v0aBemxqDAFV9h
         JhPjJ4f4XsWAhE4vuNvwQeKvQ0lKvq7ZmHJkhKAk79Ztbng18IzO+TmasXIAS1paoNXP
         BiqB082MYAbdZh29rJmRErgQhPLp3LAeSqwi5IZLJi2jNVdMI/IfxNfBTLpkjxSr7Eyg
         IK7IjSNXNhGBKE1mou5hcSghGMDq2i5Ov5zJ/S+YBlWm9J1LbN8TFuK5FTF00bI2NUmO
         Cx/A==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sL78SFBJ;
       spf=pass (google.com: domain of 39jbdxqgkal0pdhqqlfkjrrjoh.frp@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=39jBdXQgKAL0pdhqqlfkjrrjoh.frp@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ygDS4sVi80wyatPeAnLQ+q6Z3/ZGkDvh9YguMMZ8Wgw=;
        b=Pi/sOmQUwu4B0A3z3jJGHi1CepSsO57Z9N24xCZyPj2EhNjksiF6zcO+zwUQnteW6K
         f7WBTxlRiLNm6pHioqE1t2rgX6gtFH1VDndVhJYfwGbb7f5fL4Z/uU+tHaBbDaalTHvH
         KWNrlNeaKSmMg7JpILaCFk9XWguOplNLgIbN4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ygDS4sVi80wyatPeAnLQ+q6Z3/ZGkDvh9YguMMZ8Wgw=;
        b=FPZ0GSX+Y8SnNpt7Dn/bNNJJ7EBaShjX2zc1B/miHcUBEcIsWmlf1r1hN9yb+EzDpJ
         k7iAWuS8EqTEgxsfrhFR08lkz1Cus8BDDVzcDT6ZndB5+53QI+p+1S9BCpU34Eye5z9L
         0tQSRuwe9ys+TylyJDXy7oSU9RWFUg7DJUWpoDLsusPhzUubkAlEi4qgZWtPL2+cX4GZ
         gjNEyPZprqId5mBMuNMFjnOvWz9tfN4dbPu39sBcssisuelIz8crZXmi1Txh+2ZhSsI7
         5xoKMat9VCtVjJFywOTFl3Jo5r12ILWGzTVcouf2WihosxgYEa3M+2k4HjcHQ4Z6DtT7
         pdOg==
X-Gm-Message-State: APjAAAXjxF119nj2bYJyteHhQyYj4zdpOxDx3ksFhiD02jUDZwBbvemq
	pVoOcBt1vq9yo4+ljvE90Bnqmg==
X-Google-Smtp-Source: APXvYqxgltKfVGZx89mVDd7NzfmzYQ59hI4zv52TZ2udUHw6vM/q7u7netqN91WDfEXMAc3xctKY4Q==
X-Received: by 2002:a67:3046:: with SMTP id w67mr21202388vsw.214.1566388471706;
        Wed, 21 Aug 2019 04:54:31 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a67:67c3:: with SMTP id b186ls215184vsc.13.gmail; Wed, 21
 Aug 2019 04:54:31 -0700 (PDT)
X-Received: by 2002:a67:f353:: with SMTP id p19mr10850448vsm.173.1566388471408;
        Wed, 21 Aug 2019 04:54:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566388471; cv=none;
        d=google.com; s=arc-20160816;
        b=i2ba+RzOA+99aYZFIYvWq/Ou45lvk6Zbe0RP6oBeVxCp92J5ZKPZk8xlnDBsGhwMQI
         /VTXL8gL06Y7GaDniFNE/Ydp/IqolX5J5ZTxEMQQM4glcHD8DmUWnUeh8pAg9M7j0f+O
         ZloO1C8tBIYnSsbCgB8vA902NL+4pD9WFh+mR12KOZZqAqzu3q263C3dpRPgGGyQwBFN
         ppMfoAjufL6x60xi5CHN9P5OD9J7BHWU6PqmRbrsq4aLcPjsHbRgPhO70QI1oIlkl24x
         t3buN+uQ9kyEPqskkr52orLvYG97B2uqKywDoPVCeg3UrKc0tDt/iG3oiUphMhzz2q25
         jwxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=rT0KSU6kg1U7KAakAlt0j+Yalj1dCKE373XdhjaHS/Y=;
        b=p7n6/wzQuV9PMvclj4urqCeGM1s4+gVsLTVuWGsk1I23dlPunJa2n6DncnHWnV6XQ5
         +FniLWRfWNaT989AhhPLpbJSfa2Y7emN0wR5I4Yx3czYRcemzs5y18PRoFt95g7fwKU1
         HiPuhpAAGankvjvQp09tEBk4ohwVTNn/TCWaajROFvhnncr64/w3ZObLD4eJIGvkmozL
         6fEMIv6+H6A3eFH8WbcIoiPYBivNQJiEicN3wL8AGgYmwd6H5nHcc9EzScrVX1W+gupa
         M7cr92j7vULs71MF3witenUwxeOU3MymIXxRZz+bM2yPxPjuqsBl2Rw3CqDaHlwYpykn
         V8ZA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sL78SFBJ;
       spf=pass (google.com: domain of 39jbdxqgkal0pdhqqlfkjrrjoh.frp@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=39jBdXQgKAL0pdhqqlfkjrrjoh.frp@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f73.google.com (mail-sor-f73.google.com. [209.85.220.73])
        by mx.google.com with SMTPS id 16sor9903416uag.60.2019.08.21.04.54.31
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 21 Aug 2019 04:54:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of 39jbdxqgkal0pdhqqlfkjrrjoh.frp@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) client-ip=209.85.220.73;
X-Received: by 2002:ab0:5fd4:: with SMTP id g20mr2062332uaj.111.1566388470706;
 Wed, 21 Aug 2019 04:54:30 -0700 (PDT)
Date: Wed, 21 Aug 2019 12:49:21 +0100
In-Reply-To: <20190821114955.12788-1-maennich@google.com>
Message-Id: <20190821114955.12788-7-maennich@google.com>
Mime-Version: 1.0
References: <20190813121733.52480-1-maennich@google.com> <20190821114955.12788-1-maennich@google.com>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [usb-storage] [PATCH v3 06/11] export: allow definition default
 namespaces in Makefiles or sources
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
	yamada.masahiro@socionext.com, Michael Ellerman <mpe@ellerman.id.au>, 
	Ingo Molnar <mingo@kernel.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maennich@google.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=sL78SFBJ;       spf=pass
 (google.com: domain of 39jbdxqgkal0pdhqqlfkjrrjoh.frp@flex--maennich.bounces.google.com
 designates 209.85.220.73 as permitted sender) smtp.mailfrom=39jBdXQgKAL0pdhqqlfkjrrjoh.frp@flex--maennich.bounces.google.com;
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

To avoid excessive usage of EXPORT_SYMBOL_NS(sym, MY_NAMESPACE), where
MY_NAMESPACE will always be the namespace we are exporting to, allow
exporting all definitions of EXPORT_SYMBOL() and friends by defining
DEFAULT_SYMBOL_NAMESPACE.

For example, to export all symbols defined in usb-common into the
namespace USB_COMMON, add a line like this to drivers/usb/common/Makefile:

  ccflags-y += -DDEFAULT_SYMBOL_NAMESPACE=USB_COMMON

That is equivalent to changing all EXPORT_SYMBOL(sym) definitions to
EXPORT_SYMBOL_NS(sym, USB_COMMON). Subsequently all symbol namespaces
functionality will apply.

Another way of making use of this feature is to define the namespace
within source or header files similar to how TRACE_SYSTEM defines are
used:
  #undef DEFAULT_SYMBOL_NAMESPACE
  #define DEFAULT_SYMBOL_NAMESPACE USB_COMMON

Please note that, as opposed to TRACE_SYSTEM, DEFAULT_SYMBOL_NAMESPACE
has to be defined before including include/linux/export.h.

If DEFAULT_SYMBOL_NAMESPACE is defined, a symbol can still be exported
to another namespace by using EXPORT_SYMBOL_NS() and friends with
explicitly specifying the namespace.

Suggested-by: Arnd Bergmann <arnd@arndb.de>
Reviewed-by: Martijn Coenen <maco@android.com>
Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Matthias Maennich <maennich@google.com>
---
 include/linux/export.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/include/linux/export.h b/include/linux/export.h
index 8e12e05444d1..1fb243abdbc4 100644
--- a/include/linux/export.h
+++ b/include/linux/export.h
@@ -166,6 +166,12 @@ struct kernel_symbol {
 #define __EXPORT_SYMBOL ___EXPORT_SYMBOL
 #endif
 
+#ifdef DEFAULT_SYMBOL_NAMESPACE
+#undef __EXPORT_SYMBOL
+#define __EXPORT_SYMBOL(sym, sec)				\
+	__EXPORT_SYMBOL_NS(sym, sec, DEFAULT_SYMBOL_NAMESPACE)
+#endif
+
 #define EXPORT_SYMBOL(sym) __EXPORT_SYMBOL(sym, "")
 #define EXPORT_SYMBOL_GPL(sym) __EXPORT_SYMBOL(sym, "_gpl")
 #define EXPORT_SYMBOL_GPL_FUTURE(sym) __EXPORT_SYMBOL(sym, "_gpl_future")
-- 
2.23.0.rc1.153.gdeed80330f-goog

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190821114955.12788-7-maennich%40google.com.
