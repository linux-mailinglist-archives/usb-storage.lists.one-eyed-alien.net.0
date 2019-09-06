Return-Path: <usb-storage+bncBDMYPB44VAFRBXHLZDVQKGQE5QKDN2I@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x747.google.com (mail-qk1-x747.google.com [IPv6:2607:f8b0:4864:20::747])
	by mail.lfdr.de (Postfix) with ESMTPS id 2055BAB5DD
	for <lists+usb-storage@lfdr.de>; Fri,  6 Sep 2019 12:33:01 +0200 (CEST)
Received: by mail-qk1-x747.google.com with SMTP id b13sf5842801qkk.20
        for <lists+usb-storage@lfdr.de>; Fri, 06 Sep 2019 03:33:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567765980; cv=pass;
        d=google.com; s=arc-20160816;
        b=DpfKwt3WtwzGYisugc8UHXFk3H6xj8t9vcFKEeqqIzhVEu5S7n9XGYnwacwx9ucQid
         bWDC0mUAklG6zABTVo02LEXNkC+oSihfUq4SNPPoUcKbRRbdrejkGoGl+hZWkBzb2Wp5
         oMAVbdsQp7jcC4TPNXMZvFVqhglLPX1VZfZ2f+xpLvl7AVLkvgTHZgTenBOuLZzeXEVm
         bAmHBCghCfDmk/ldMgaxuwvyOlbQ9LUWrAj09Hmt6ALRL2dSSclRcBrqPnIq5lzTLBbc
         DiBU9s56hCsaZWMhxioyPJU3o6wMbKrYm8Z1twEVFXuA1ZMUQyhqXoDl2EBnFnMJv3ZK
         FSdA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=ON9d+D4pIvZ+mpZ3Ki7XNuOnpj21nIUZPvxLF87vvso=;
        b=hR4xPuoA4XnnnzZqTVETNaWqkZeN19zkSIslkomC9LGhKsFMVeVFHyyZUESRJx0I2U
         HQJZyuvyofbz3ZYG7JSMA+4XihKeyUe451GOmeo+j+ju49soXthb2cl3tSbN5bDHTQIr
         fL9ZGcHxRQfrDHjBjgoQBfwUXyfxNZJnDt0ldRRTNFAk++gQCJC2ggNl8J7iX8jl4aF8
         x1QxOX9DWR3wPBiwyoaNQkrXCo2vLOMWjXeCuX0NtvDlo2mEUscMepQdUtsBJLDjl6EI
         S0oft7+g6K8PO+BtO9mlkARMoRrrY8oTIujqRF/WfQ8Xaqbfvvrt1oJjcNUt78kXmjsx
         sTJw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Cwgi2TD2;
       spf=pass (google.com: domain of 32zvyxqgkaaiocgppkejiqqing.eqo@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=32zVyXQgKAAIocgppkejiqqing.eqo@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ON9d+D4pIvZ+mpZ3Ki7XNuOnpj21nIUZPvxLF87vvso=;
        b=XniTh0+K4URI2B897hR3fb2D2NhX/goVJfUzyHAWka/G6yOxAKMjN7JuJUxCiYexyX
         0xf6/fLLj1v5fSQQUA0JeTgzqVx10hLRKdR0itEzfJ+DzQ4T6H6PcEwJhKhnHU7FvUYj
         zc0MWJ8hllEpXHfbM3Z6OSEse1K6P0+EEdHWY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ON9d+D4pIvZ+mpZ3Ki7XNuOnpj21nIUZPvxLF87vvso=;
        b=fKn++PDFtnFaxP8NLz29wtd3Fv5Cfmcwrk2swe6iNPeaPKAyE2urv2uPptvNtr7kUE
         4IozDT9odMnhP0/dbP/1cgzX6Abp0Ke1kc4iQxlF7zfRYmePSClha2KtZ8TiFHe5G1cl
         mpdyn2iydkf/8qK7RLQ8XqkGv63jFeJ5siEWWK0yx9uVMg9eQlA+x0F3iuK0GNdaCC7B
         fgLC+sSw3IlW8pKW9c3es/601NJxw7GXHCiFM3bFS9ZGEMGc8CNjf3QkDTbSRVY6/Llb
         2fpUMBjbKdbGV27AkPBF9jMQzZ/PkIPUnedHKGaLpFPZs8p7RX9Fb++ZddlrGfq5Q60s
         eTSA==
X-Gm-Message-State: APjAAAWVMSkjr+zbJtPzpGZ8DgFdDLrmV+bhSVH+PUxlHuK7R29o9Dcq
	PUeFD6DjTMrr+yw3le5LvM6eUg==
X-Google-Smtp-Source: APXvYqxAQ0xIMVFfXcwtjb/UD+taURzkf6ulTSKJ0ZES29SKf7qNKrcXSrhBC4x3i0zzv2H7isutLg==
X-Received: by 2002:ac8:140e:: with SMTP id k14mr8692028qtj.43.1567765980149;
        Fri, 06 Sep 2019 03:33:00 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aed:3fb8:: with SMTP id s53ls1680049qth.13.gmail; Fri, 06
 Sep 2019 03:32:59 -0700 (PDT)
X-Received: by 2002:ac8:6745:: with SMTP id n5mr8307947qtp.68.1567765979889;
        Fri, 06 Sep 2019 03:32:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567765979; cv=none;
        d=google.com; s=arc-20160816;
        b=nIyIEpACNvaMLp4PbdaAmhLv5mQzyWIJsm0fokNAfkX4tzp8gB7/YhhfDEw/fltavj
         OejNc/vBhF1cBPnf+NbDrYIaSKF4BAjj/RB0vKTbPVbgGFy/Ki6IoS0kiyLZV3y4M6pu
         ywqd5AQSp5S1szADrnWXlJlEW8Z7pzEhglMM9zGlnpYs464oelid/VsxgPeJEvtQ436B
         gm5OUY/Lq5NB16tJCoYaXX7qYNbCmY5blLXtc93drgUEa5n8ztFnFyFU1O6dOBCRFljY
         u7CTU9wlnsExtTI0W3JrwpKKotGwmMPGwZ+fdrTlu7TzR+CfMqGPw4Vn4YmDDCpNboZv
         +3iQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=QzLwUka7MndmPbLBfBjtnVUWcO8y+yUapUjSVd2AkdE=;
        b=mRubdYxFuSMu5bUsquciA2QFCDIdtm9ACIlkLmBcNgWeNd136/7opliIFRtW0T/bBe
         GVnP3XA6WaK8Uq7pTSIMHa/xezZHV2HPpeb85+QntHX8q7QWDUiAq+yXcBou4hjpNERO
         VlnHAYu8qASBG5ybHn8OG8aSTsZCtcf9QNU/+SxrouydVpqUn3p0NNS6WDBmV6k/cb6O
         yM4hRuQQCjjSCVZXLi7uXYH61YciXd52JoXohzCrb1S0oISZ2EHv7tXGFJrCqu6Uaju6
         /jFRZmy6DbmdlwxgN9PClqj61XG0UngLDKzXk01BSsSNRJlDtKRq1w8+3DxDetvyln/b
         DDgw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Cwgi2TD2;
       spf=pass (google.com: domain of 32zvyxqgkaaiocgppkejiqqing.eqo@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=32zVyXQgKAAIocgppkejiqqing.eqo@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f73.google.com (mail-sor-f73.google.com. [209.85.220.73])
        by mx.google.com with SMTPS id w31sor4397790qvf.33.2019.09.06.03.32.59
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Fri, 06 Sep 2019 03:32:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of 32zvyxqgkaaiocgppkejiqqing.eqo@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) client-ip=209.85.220.73;
X-Received: by 2002:ad4:5149:: with SMTP id g9mr4868362qvq.115.1567765979457;
 Fri, 06 Sep 2019 03:32:59 -0700 (PDT)
Date: Fri,  6 Sep 2019 11:32:30 +0100
In-Reply-To: <20190906103235.197072-1-maennich@google.com>
Message-Id: <20190906103235.197072-7-maennich@google.com>
Mime-Version: 1.0
References: <20180716122125.175792-1-maco@android.com> <20190906103235.197072-1-maennich@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [usb-storage] [PATCH v5 06/11] export: allow definition default
 namespaces in Makefiles or sources
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
 header.i=@google.com header.s=20161025 header.b=Cwgi2TD2;       spf=pass
 (google.com: domain of 32zvyxqgkaaiocgppkejiqqing.eqo@flex--maennich.bounces.google.com
 designates 209.85.220.73 as permitted sender) smtp.mailfrom=32zVyXQgKAAIocgppkejiqqing.eqo@flex--maennich.bounces.google.com;
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
index d59461e71478..2c5468d8ea9a 100644
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
2.23.0.187.g17f5b7556c-goog

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190906103235.197072-7-maennich%40google.com.
