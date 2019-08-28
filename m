Return-Path: <usb-storage+bncBDMYPB44VAFRBYF3THVQKGQEZNZC6WY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wm1-x345.google.com (mail-wm1-x345.google.com [IPv6:2a00:1450:4864:20::345])
	by mail.lfdr.de (Postfix) with ESMTPS id 58310A004F
	for <lists+usb-storage@lfdr.de>; Wed, 28 Aug 2019 12:56:33 +0200 (CEST)
Received: by mail-wm1-x345.google.com with SMTP id m26sf592271wmc.3
        for <lists+usb-storage@lfdr.de>; Wed, 28 Aug 2019 03:56:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566989793; cv=pass;
        d=google.com; s=arc-20160816;
        b=GJyRgCVJStcI3x0U/5VBiM0JYbTBl4A+vyIG+8GUbn0zz/lQ4J2cyBP3g2tM6FRaAp
         rESfoYCOefG0HLvbhY3F2CK+J8MnUWYSIGv5HPCHmJKI53fMwoNshAioRlHTFxM5sLEg
         PtHP8ouz+R2ibnHm1YPFiSuzbOYCoo+oQxG9DqPmWZdbhCmpHQz6y1AZk/L21HQRsZ0d
         F1+NcCX745Fhu5yKNAapAM5ayWEdIFne/mQMcBOJm1QJAtjfs05Kjd7aSxXAJDiJDjtl
         ObLHgsmP4NpV8TzlVxqmQu5/akZbbLvbPTer+BtpF2b70cYxXkDn+v1fmqTZRoksBYq5
         9SjA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=0hC+a+c9eARukNfXHQmWDr2yOyNcRKwJhVR3/5drRB8=;
        b=iZtQc3tJ37U4yL3P5kXQF0Qp/mzEJ7Vw8UFimOi/n5fiXyJrvjRsr3nbMuTPiUs9Dj
         1NGjJnmnGPBh6x7m8cskJ7qCR7VxYQnvultysC54tDxy7QIX8vtoWwx2fK6Lw6KjE6hI
         3hYCVpSi+CN1riZA9BcJah6qqzX/I8UeUKZWlWOCQQyW9PawIeMEFeBBj51oC1duGfYb
         ESRX/pK86OTQkURFuc9aczfbzzawgpjDNE3mDJsxQplTINA8C6gNtmPmZxn5xwyJw+mv
         QCsth4xxLjBasM8WlxYJAM0DnJ5QauX9DzMtwjqj/pxtNSNtzFbpjZ28E7WEEy1nFsK2
         wHZA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NVdwLJqM;
       spf=pass (google.com: domain of maennich@google.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=maennich@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=0hC+a+c9eARukNfXHQmWDr2yOyNcRKwJhVR3/5drRB8=;
        b=Q07j9FYbhQIOoh7hOVeYy/E+oBhdVZe4VPhqzMwGdOxL7gcRpPuDuN+t1LSq56vmT8
         fJ/FVM6ambmJie5NiS7cR1fZIHPQPK2xN6Ltn0rT6c33moaG1IRMa2jc4ckOEzC6e6Ls
         wh6Wo2xh9o5yRwckgsVr6+ChWjyHVH/qqmq+8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0hC+a+c9eARukNfXHQmWDr2yOyNcRKwJhVR3/5drRB8=;
        b=ta7v2muFMw+2P07eruifvl9i9/MNPN8wpuSL6sW5R8m57fcYgpQsjUExJingObOtXa
         IItaZoXV4KqQNES8r6sKQ+tXEwm+ETLP/Gfoueiu3V2BMRGbSJbwd+sF4LZd3O4RtzBG
         cVNuN+izjhzLia27iWmaqF/ly6sqVB8PIMVJ6QNV8lWz5nACIHyVni+whQDgvsgfU+Jb
         mmWFPojIgLrhygl3Gc8a1rUZ5VY36qaxTJQ+WiGsRhJqjryja7UY1Vtn80vR63L6+6/R
         WS51o6xKy0pxk1/UHaz6Ahf7zkyU0XBf2Oz7TSeH/T2OzRixcjMo2aM1ScotmMzH4c8w
         jHug==
X-Gm-Message-State: APjAAAXO6O5vtzLOFNl4gIBIOjEC5qhCDXmHt9h0eusGSslMgCcXvkTu
	OlPKpqVBBHv8JvV3yuhFy4KMKA==
X-Google-Smtp-Source: APXvYqxVem4hXyPoGfGPiXZ804zGbSyg+KPvwtj2ucGFbRwp61KYthRIzDIi8ehBT+PYMao1LJajDg==
X-Received: by 2002:a7b:cf11:: with SMTP id l17mr4009146wmg.158.1566989792949;
        Wed, 28 Aug 2019 03:56:32 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a1c:4e0c:: with SMTP id g12ls784113wmh.4.gmail; Wed, 28 Aug
 2019 03:56:32 -0700 (PDT)
X-Received: by 2002:a7b:c4d2:: with SMTP id g18mr4143198wmk.79.1566989792453;
        Wed, 28 Aug 2019 03:56:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566989792; cv=none;
        d=google.com; s=arc-20160816;
        b=xJxCuDitmDoEMWjXRwgulRHxWpzFQ31UINTYi8ro0LGO0cFo2p2u9SJq6fSbW0OqDw
         iTkBt25Eol0UHfuJz5GyoyIy2ClxR3UcGLfFjTSiAfAW5fUHrpMKT4NhK57gaoGWUVmn
         tpmwVEifEe9QDKseIxt+QrEgryRc5HAelHcorrCE4on8Hnyu6UdjexVWBobbZu2r52rx
         Kn6vjBRGokem0ZvfAnZiYzm/sWTJRc/hblikspyo09Fbfe+89eIGsXXyBONeIRDeG97z
         msoDLkD+XWHwPvXJfw97MsVgophlT6OT6tagDRXs5ZQDaqnKeH6uhcFacv3l3W3aNMan
         9hvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Vx9t5xjLzwxSs68UQHUay9ecnGA4GXfJUCmBL33YCMk=;
        b=nupIZgF8xtswRVyG7v4IFCU2Voogg+IFU6IjB9AC9cosG4tUTo1p83Ar57l6JgllX3
         0lJVHb1i1ffbMhlmC0aaWPctHwgtps1BGAK1xNPf20PuqYUx5cY0RiNswXXgulQC731p
         GX23yT8m+fqH0BvNAzcoCbtQCxynMCsEqGjKyFWR9WKsgxKB8mMeMsqk6DCWjzjYsJwV
         EJK1mPOpauY+pRd0SnG5Lz6KePwZLUhvl1L7Pf+pIhBWj0Fmp3tmSqcifxpruT6B3aSR
         tp4gGKvUBf0sq+wqA9V/aEtCGUThQvh5e3uLBBqpvy5CTXKghtzXO8Kuv5KG8oZopSAo
         XrvQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NVdwLJqM;
       spf=pass (google.com: domain of maennich@google.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=maennich@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id a15sor1632709wrv.51.2019.08.28.03.56.32
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 28 Aug 2019 03:56:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of maennich@google.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:adf:ce81:: with SMTP id r1mr3959629wrn.114.1566989791786;
        Wed, 28 Aug 2019 03:56:31 -0700 (PDT)
Received: from google.com ([2a00:79e0:d:210:e8f7:125b:61e9:733d])
        by smtp.gmail.com with ESMTPSA id f6sm4573707wrh.30.2019.08.28.03.56.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Aug 2019 03:56:31 -0700 (PDT)
Date: Wed, 28 Aug 2019 11:56:27 +0100
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
	yamada.masahiro@socionext.com,
	Michael Ellerman <mpe@ellerman.id.au>,
	Ingo Molnar <mingo@kernel.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: [usb-storage] Re: [PATCH v3 06/11] export: allow definition default
 namespaces in Makefiles or sources
Message-ID: <20190828105627.GA41539@google.com>
References: <20190813121733.52480-1-maennich@google.com>
 <20190821114955.12788-1-maennich@google.com>
 <20190821114955.12788-7-maennich@google.com>
 <20190828104951.GC25048@linux-8ccs>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20190828104951.GC25048@linux-8ccs>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: maennich@google.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=NVdwLJqM;       spf=pass
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

On Wed, Aug 28, 2019 at 12:49:51PM +0200, Jessica Yu wrote:
>+++ Matthias Maennich [21/08/19 12:49 +0100]:
>>To avoid excessive usage of EXPORT_SYMBOL_NS(sym, MY_NAMESPACE), where
>>MY_NAMESPACE will always be the namespace we are exporting to, allow
>>exporting all definitions of EXPORT_SYMBOL() and friends by defining
>>DEFAULT_SYMBOL_NAMESPACE.
>>
>>For example, to export all symbols defined in usb-common into the
>>namespace USB_COMMON, add a line like this to drivers/usb/common/Makefile:
>>
>> ccflags-y += -DDEFAULT_SYMBOL_NAMESPACE=USB_COMMON
>>
>>That is equivalent to changing all EXPORT_SYMBOL(sym) definitions to
>>EXPORT_SYMBOL_NS(sym, USB_COMMON). Subsequently all symbol namespaces
>>functionality will apply.
>>
>>Another way of making use of this feature is to define the namespace
>>within source or header files similar to how TRACE_SYSTEM defines are
>>used:
>> #undef DEFAULT_SYMBOL_NAMESPACE
>> #define DEFAULT_SYMBOL_NAMESPACE USB_COMMON
>>
>>Please note that, as opposed to TRACE_SYSTEM, DEFAULT_SYMBOL_NAMESPACE
>>has to be defined before including include/linux/export.h.
>>
>>If DEFAULT_SYMBOL_NAMESPACE is defined, a symbol can still be exported
>>to another namespace by using EXPORT_SYMBOL_NS() and friends with
>>explicitly specifying the namespace.
>
>This changelog provides a good summary of how to use
>DEFAULT_SYMBOL_NAMESPACE, I wonder if we should explicitly document
>its proper usage somewhere? (along with EXPORT_SYMBOL_NS*)
>The EXPORT_SYMBOL API is briefly documented in
>Documentation/kernel-hacking/hacking.rst - it might be slightly dated,
>but perhaps it'd fit there best?

I will add documentation along with the commits. Not only for the
macros, but in general to describe the feature.

>>Suggested-by: Arnd Bergmann <arnd@arndb.de>
>>Reviewed-by: Martijn Coenen <maco@android.com>
>>Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>>Signed-off-by: Matthias Maennich <maennich@google.com>
>>---
>>include/linux/export.h | 6 ++++++
>>1 file changed, 6 insertions(+)
>>
>>diff --git a/include/linux/export.h b/include/linux/export.h
>>index 8e12e05444d1..1fb243abdbc4 100644
>>--- a/include/linux/export.h
>>+++ b/include/linux/export.h
>>@@ -166,6 +166,12 @@ struct kernel_symbol {
>>#define __EXPORT_SYMBOL ___EXPORT_SYMBOL
>>#endif
>>
>>+#ifdef DEFAULT_SYMBOL_NAMESPACE
>>+#undef __EXPORT_SYMBOL
>>+#define __EXPORT_SYMBOL(sym, sec)				\
>>+	__EXPORT_SYMBOL_NS(sym, sec, DEFAULT_SYMBOL_NAMESPACE)
>>+#endif
>>+
>>#define EXPORT_SYMBOL(sym) __EXPORT_SYMBOL(sym, "")
>>#define EXPORT_SYMBOL_GPL(sym) __EXPORT_SYMBOL(sym, "_gpl")
>>#define EXPORT_SYMBOL_GPL_FUTURE(sym) __EXPORT_SYMBOL(sym, "_gpl_future")
>>-- 
>>2.23.0.rc1.153.gdeed80330f-goog
>>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190828105627.GA41539%40google.com.
