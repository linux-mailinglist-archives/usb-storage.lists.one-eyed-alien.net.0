Return-Path: <usb-storage+bncBD45FSE2XIORBWNYTHVQKGQENXJBCFA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x646.google.com (mail-pl1-x646.google.com [IPv6:2607:f8b0:4864:20::646])
	by mail.lfdr.de (Postfix) with ESMTPS id 79F87A0032
	for <lists+usb-storage@lfdr.de>; Wed, 28 Aug 2019 12:50:03 +0200 (CEST)
Received: by mail-pl1-x646.google.com with SMTP id j12sf1298601pll.14
        for <lists+usb-storage@lfdr.de>; Wed, 28 Aug 2019 03:50:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566989402; cv=pass;
        d=google.com; s=arc-20160816;
        b=H1xigWyf0iyD+LSYts8E13qW/o+R/yePSUr7u5qq/1zJZjjT1dgJf+ie3NjO7cQokY
         TurSLdnKl7dsd2b8lmFoExOyzmxylg6r4z9MfiZTV5fbnoNfSE3g0jNHYF+JWQFY+BY7
         h+WTkwQuIBHTwyTbm8l7VJYag/69jBDRfKJj9bv9+t2/Fe9O8912TfzBJAl83xKw+Z51
         os91sOlk2xrPg3Jz9YdGiS7faauvc0k7s++mu3nLppRGN8jk+AincfYnST1zn1OCTwrW
         E/pD5obz1rPlL39SkruxX5lU8P+UJhZQBAt6kf52fBMs/TomLkmA6kjin+3w3Qg8pXMo
         R9Aw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=wApK9FmdotnB/u/qpmqDjZi6JglrjNYsIfb41Npnjq4=;
        b=Sqw+j7U5SGi4p/n0VWIYQTEknNmGNB8BXrPEhDqdJc17khYdREWsGJ92ruvlEExFrq
         UiX1Du3ox7G4WIM7IoSRTbJ4ZKJlpMQpkXQuDsW64jW70+kqbjyYPDliom8Cxqit8j2E
         kto85vINEYxHQ8t9SZwRdTzDN3gD38Di9Kw75tPXx4YgfyY+YQ+iZGSvz3k43bt6CCZc
         8/hGiFjEndHieLgL7wy1N4RbQokcs5UorC5fhEWXzCSTkeRqqbqbX7yd0ZaBG4wR4CzJ
         7Jta0jK5ykoGfTUBwM+Yw3TPWJ6ILwTrFYSI05OmGDhccgLcz+YvAXspRUa0AZ95Fie9
         9XBw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=i40dmLIc;
       spf=pass (google.com: domain of jeyu@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jeyu@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wApK9FmdotnB/u/qpmqDjZi6JglrjNYsIfb41Npnjq4=;
        b=iLqclAX11xCIB505P5ZQ4460OlkXr4hTnjlKYR2SWMi+fz6oDky40nrEezXmFWNUWh
         GAPjpiny8NZuLVBqQJlZCNUmbtWFYfOex6ySM+V39CYCadQHGZ+W/zdq3alEFT51DIf3
         ZblVXlFRiNXAs3NqQd9AYYTpcFWe8sGtHhvok=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wApK9FmdotnB/u/qpmqDjZi6JglrjNYsIfb41Npnjq4=;
        b=LIyHJ1EGYSIzNdRTCe+NZeK1C2gD+4vzmEmSZnw7KDeBH2j1DR3YMTfVW0ZjYNERQJ
         LSrDV8g+WVrnYoGYuYqIPkfYAzRBhjvGb9o5L/cmv+BGMxTx3sAzLWN+cDtjfy190gp3
         HZ4hapGBFCwkthOr6QArP3fGrHYtoJYdNKjKOGG4jhoYjWTxgn43r+YZtuIK1r3/+w9p
         ENC9/1e5nJDAIUrM5ql5TJx3qOHOI75yuW3rlSWQj8TCRdgavYG5FS8q6BhQgOTFMD8f
         CfvKa/9N4vQ4aBRmm4YFHbT1VTOu4RLPxLHN5mAP7MgUOPubnjRNasT4QIfzM6TXN1Jd
         12rw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAUVwNPJyBAgaDn4r2MXDxvMnYIA+YqfxxKJZ83aptKBZqPPcUDb
	ggY4rzObfHTrnthd8EV6lvCSiA==
X-Google-Smtp-Source: APXvYqzR55peJs4rGr6caeQKy8dYtoigDK969tAQ+DI9M7kWqyHnxAv6sO7OMa3MJPF701ePl0u5zA==
X-Received: by 2002:a17:902:c810:: with SMTP id u16mr3530369plx.339.1566989402104;
        Wed, 28 Aug 2019 03:50:02 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:a4c5:: with SMTP id l5ls700975pjw.5.gmail; Wed, 28
 Aug 2019 03:50:01 -0700 (PDT)
X-Received: by 2002:a17:90a:a486:: with SMTP id z6mr3483811pjp.13.1566989401693;
        Wed, 28 Aug 2019 03:50:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566989401; cv=none;
        d=google.com; s=arc-20160816;
        b=uehdi0vcGmrXiVB0qw2s2g7HzyeeYKi4EuY+8MmGo6LQKa8n8/+L5vauiOsvSSTxfr
         xl33+2Jgp3yPhQSHHS9AvzzZfNB8xduAntgfCyyzi3fcT2lwdPvpc4wYklwD6owjWfaY
         a8FWsxtvM17meEjO76jcUuMP1rKTIYNikuEPnnJpjZjoDfwdXZF8af8vCS8GrYk+hsMe
         +r6HOYiIudpBOkM7F+i02GmCdZN/qxdCznGEoel2djDkf1MOS3A6DCskZ+lKNX7eULIj
         zcVhOQXkmlT3NsAu7dvOwIRtyxTV7748p/E69wYOlatTDCc1101kbDK6s14ySF1ncJII
         6XqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=ZZ7Dmd81LPIbnGwgo7W/Mphut/qFhqHN/H9wiGjZxXE=;
        b=fyGuvVv3oZFXyC46O6z8QDuTFolzXvGzOBUtAn+/WKk+BfAn16DEyWWObIqoDJtmsz
         wSOkxOegZclDEqiIsTaGqAZXvlGDgueeV2PMW0B+8N4ba5F81Fxnxx0y1SaSS/sD2QAe
         WeF9XtvDBGVLmmgz/ZiYOI1rUjmPakyRgHzzLeA0gw24maiPBlDFs2wGAWKIZi8wKpvF
         RMO9o/KIN4nkZVwALNegxPx+gmJHL0b2sufp0Df+pQsKxfsSJztM/Z3c4AeNNs1LaJ7H
         VyjY2iLdwVqqZGRPRqSNlt4rvtCGX32GPJMzf9YCETUnitCJq5XfeRXM/MBfr3fXFfNO
         CSIw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=i40dmLIc;
       spf=pass (google.com: domain of jeyu@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jeyu@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id cp5si1641601pjb.4.2019.08.28.03.50.01
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Aug 2019 03:50:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of jeyu@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from linux-8ccs (ip5f5adbee.dynamic.kabel-deutschland.de [95.90.219.238])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0AA242173E;
	Wed, 28 Aug 2019 10:49:54 +0000 (UTC)
Date: Wed, 28 Aug 2019 12:49:51 +0200
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
	yamada.masahiro@socionext.com,
	Michael Ellerman <mpe@ellerman.id.au>,
	Ingo Molnar <mingo@kernel.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: [usb-storage] Re: [PATCH v3 06/11] export: allow definition default
 namespaces in Makefiles or sources
Message-ID: <20190828104951.GC25048@linux-8ccs>
References: <20190813121733.52480-1-maennich@google.com>
 <20190821114955.12788-1-maennich@google.com>
 <20190821114955.12788-7-maennich@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20190821114955.12788-7-maennich@google.com>
X-OS: Linux linux-8ccs 4.12.14-lp150.12.61-default x86_64
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: jeyu@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=i40dmLIc;       spf=pass
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
>To avoid excessive usage of EXPORT_SYMBOL_NS(sym, MY_NAMESPACE), where
>MY_NAMESPACE will always be the namespace we are exporting to, allow
>exporting all definitions of EXPORT_SYMBOL() and friends by defining
>DEFAULT_SYMBOL_NAMESPACE.
>
>For example, to export all symbols defined in usb-common into the
>namespace USB_COMMON, add a line like this to drivers/usb/common/Makefile:
>
>  ccflags-y += -DDEFAULT_SYMBOL_NAMESPACE=USB_COMMON
>
>That is equivalent to changing all EXPORT_SYMBOL(sym) definitions to
>EXPORT_SYMBOL_NS(sym, USB_COMMON). Subsequently all symbol namespaces
>functionality will apply.
>
>Another way of making use of this feature is to define the namespace
>within source or header files similar to how TRACE_SYSTEM defines are
>used:
>  #undef DEFAULT_SYMBOL_NAMESPACE
>  #define DEFAULT_SYMBOL_NAMESPACE USB_COMMON
>
>Please note that, as opposed to TRACE_SYSTEM, DEFAULT_SYMBOL_NAMESPACE
>has to be defined before including include/linux/export.h.
>
>If DEFAULT_SYMBOL_NAMESPACE is defined, a symbol can still be exported
>to another namespace by using EXPORT_SYMBOL_NS() and friends with
>explicitly specifying the namespace.

This changelog provides a good summary of how to use
DEFAULT_SYMBOL_NAMESPACE, I wonder if we should explicitly document
its proper usage somewhere? (along with EXPORT_SYMBOL_NS*)
The EXPORT_SYMBOL API is briefly documented in
Documentation/kernel-hacking/hacking.rst - it might be slightly dated,
but perhaps it'd fit there best?

>Suggested-by: Arnd Bergmann <arnd@arndb.de>
>Reviewed-by: Martijn Coenen <maco@android.com>
>Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>Signed-off-by: Matthias Maennich <maennich@google.com>
>---
> include/linux/export.h | 6 ++++++
> 1 file changed, 6 insertions(+)
>
>diff --git a/include/linux/export.h b/include/linux/export.h
>index 8e12e05444d1..1fb243abdbc4 100644
>--- a/include/linux/export.h
>+++ b/include/linux/export.h
>@@ -166,6 +166,12 @@ struct kernel_symbol {
> #define __EXPORT_SYMBOL ___EXPORT_SYMBOL
> #endif
>
>+#ifdef DEFAULT_SYMBOL_NAMESPACE
>+#undef __EXPORT_SYMBOL
>+#define __EXPORT_SYMBOL(sym, sec)				\
>+	__EXPORT_SYMBOL_NS(sym, sec, DEFAULT_SYMBOL_NAMESPACE)
>+#endif
>+
> #define EXPORT_SYMBOL(sym) __EXPORT_SYMBOL(sym, "")
> #define EXPORT_SYMBOL_GPL(sym) __EXPORT_SYMBOL(sym, "_gpl")
> #define EXPORT_SYMBOL_GPL_FUTURE(sym) __EXPORT_SYMBOL(sym, "_gpl_future")
>-- 
>2.23.0.rc1.153.gdeed80330f-goog
>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190828104951.GC25048%40linux-8ccs.
