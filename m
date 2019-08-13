Return-Path: <usb-storage+bncBDMYPB44VAFRBINHZPVAKGQE5OFI4CI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yb1-xb46.google.com (mail-yb1-xb46.google.com [IPv6:2607:f8b0:4864:20::b46])
	by mail.lfdr.de (Postfix) with ESMTPS id A23778BCC0
	for <lists+usb-storage@lfdr.de>; Tue, 13 Aug 2019 17:13:38 +0200 (CEST)
Received: by mail-yb1-xb46.google.com with SMTP id a2sf68860342ybb.14
        for <lists+usb-storage@lfdr.de>; Tue, 13 Aug 2019 08:13:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565709217; cv=pass;
        d=google.com; s=arc-20160816;
        b=wschsE32zhvZq29IFMbllc29RZb4OPrHxPBL9y/SzrNt0qc2DKbFYZaS3f4vdCvzP2
         S/HA3EEqkYqRZYkDo7hEefGh88iI6GZ6GJNqXhvnsHZrXpnX3y3i53ag/0sIh060TAal
         Gxp97vYgp7oPyDkFr5b8PRyoSIW1fooMLvcbZp5osOPeZ4w4IuVz5Lf6eOpfOxkvuboe
         JtMFSeZHhurAzwVDPcdNGo6Su5oOH1y5Mlp/0fa7LqKVhPIenPYO4yZTxZ8zcW4VQAj/
         fwIkYjxFg9ZtTJh4fNNCR9GfNbMo1iutfNVirhT0NYyhSII2AVEJZOk4vD8ItqJvZWDD
         QP3Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=LGyXB8NlAFdunSOFe7YgTAs471X/fo2P0K1SKIhclOA=;
        b=AUq31Ko8Nq7AID8rkE7XWt2OFXTr1BZHEDSpW2DVMv1jeLTMJOS4lOnNNp6F/I1WNe
         mphlFEAZj2063VfyalCow7qD2xs2v4f5xE28O5rbInLDNVtyLqZz/VY02+BOl8zR5MLa
         7M86rs73kMKNNrxQfApHB0gT9wUGRxZKeidD/o9uBrMFZHT9uMxiRP7Vj0rVHIRO535g
         H0sgYHp/R+B5cR5obtDJa2qaNBTMGgdIGap6lIUnaVyQuh44yPYeQHw5DUVL2kma/NuY
         ZLpQKQhUUfZI3G07dl/GcG+otmzPLrzbb9C01iENyeuAMl36RVAiP9yh8c6rMc0gD6cy
         qBQQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=A0rCIzO1;
       spf=pass (google.com: domain of 30qpsxqgkagmnbfoojdihpphmf.dpn@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=30qpSXQgKAGMNBFOOJDIHPPHMF.DPN@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LGyXB8NlAFdunSOFe7YgTAs471X/fo2P0K1SKIhclOA=;
        b=lAbdefDZoxk8Lossknmkkmqsu1Vs4dFKGnCgr+CnkbipaKMW67jUkgu+63gU705zIT
         iI2KfgOU0st2E/es4M7Lmhq71xr6alpZ0ZS6zjORi0vl6zhDkj7pQbkgawbyRyalDBs0
         +6LwOKYXLo6ByI1uZfC2az15i10UT/cx8cCOY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=LGyXB8NlAFdunSOFe7YgTAs471X/fo2P0K1SKIhclOA=;
        b=TQ0BV/yYhs6bQi2cmkxlWF7Qo95KliySwVs17jSY9QhJqrswgwZQTyo20RmFAJZDwc
         Jwt7l0IRm6ln1QdHBeNHksjY+8Jz7354f1H56kQ/GgOgFTvuYv+1a5eEyFI3csUJ4bbP
         w96aDrAfeHfWIr707S5QHlDWcAZWY7B3gIl+vtSvLMgHoNjHW8n3t4QSTWClPuZMNop5
         QGqKJUHxvUq5kFWVrtDt1O7K7wyaMIR/PkBCud5l1XJtY/dylGpTdZcPD2f1sgHYFWGp
         6UQxlTM8EzsiaPl7Gz5kUjzALu7eIL56pe+cfSLN9+NkAlLBWpLtJSskqmHK7o8GnKdF
         nrLg==
X-Gm-Message-State: APjAAAVH0Z6TqVlOxixZ71AxGY5Ga1OIAYXLFmdaZqOx1yRD89PWWUkQ
	L5wSzL8g0MA5bLTm+/zNbGnJFA==
X-Google-Smtp-Source: APXvYqxw8SZcUR2DXKy/IU5bAZB7yUj+EmxTv7mItoqJ3gwmGOGedm/20jWQvxeIzqGYRQ5nGOyqtQ==
X-Received: by 2002:a81:2e13:: with SMTP id u19mr26052427ywu.270.1565709217693;
        Tue, 13 Aug 2019 08:13:37 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a25:df86:: with SMTP id w128ls2467215ybg.16.gmail; Tue, 13
 Aug 2019 08:13:37 -0700 (PDT)
X-Received: by 2002:a25:902:: with SMTP id 2mr24757261ybj.80.1565709217430;
        Tue, 13 Aug 2019 08:13:37 -0700 (PDT)
Received: by 2002:a0d:e211:0:0:0:0:0 with SMTP id l17msywe;
        Tue, 13 Aug 2019 05:19:31 -0700 (PDT)
X-Received: by 2002:a25:800c:: with SMTP id m12mr16550581ybk.145.1565698771480;
        Tue, 13 Aug 2019 05:19:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565698771; cv=none;
        d=google.com; s=arc-20160816;
        b=XppWVDfKWZzIFuPO9zm3bzlNZedXBLiuz7L9nuSYzfdrIh1h03ISsB80o/38ZeVG2T
         zhjJLOpb7q6sVtnER7xcaZeyD52sltUjA/K5N/C1d5LK9/KS6DnT7dNOy+ZlVf/X5Ha/
         RbFuBe2MDDRNpveRbcVpz7mQPgbeOxi82CS35LOhcb5DG3lOtMF2aBL5GF20x8B08Rgm
         U9Wu8u/6saD291+ftvVUVweSa1CdZiUrIFAgtTD0oMfZZbfglCInzbSwUQjXEeDXVQXn
         F2zYPdqrURnvKo74rekz+hlio9+8ItkPZyYDa3oRikptamVLXQmFyGzOqVqCkzM5tvxt
         qaHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=5NgEEOsuafidZLfBQW1+8uAN6YPDpjefZYyipohUb1w=;
        b=O27GeKt1vjMNZ4MwEGcTdAD4kh8b0VNfDrjpdOgT3/linkWARF4zo9vIx3sQjsLH+8
         N74j12dtisCKXRREZ+MUPzdrbHbCj4TNR303gksV9Qm19A97PfFMYjIQ+FxYZUXnXI1h
         QijQss2XSQ/DKXymqX3Uf1UszTNsZXI59QLED0jVeNd7L5oKgaXazZxd/Djzfbmh9YyC
         LHB8nvs/VZN1POLMSNBpDznAK9IBtJKuQglLqur5pHh4oVsNecGABlJwb3fMrB2OZKWH
         bUf2Iss9tTbsRARTKcTE6iofWhykC2FclD3ybC36atm6RK8urTQBt4XNMTG6uXR3wkt6
         8BGQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=A0rCIzO1;
       spf=pass (google.com: domain of 30qpsxqgkagmnbfoojdihpphmf.dpn@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=30qpSXQgKAGMNBFOOJDIHPPHMF.DPN@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f73.google.com (mail-sor-f73.google.com. [209.85.220.73])
        by mx.google.com with SMTPS id m133sor4115987ywc.109.2019.08.13.05.19.31
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 13 Aug 2019 05:19:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of 30qpsxqgkagmnbfoojdihpphmf.dpn@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) client-ip=209.85.220.73;
X-Received: by 2002:a81:1d84:: with SMTP id d126mr25341335ywd.199.1565698770861;
 Tue, 13 Aug 2019 05:19:30 -0700 (PDT)
Date: Tue, 13 Aug 2019 13:17:03 +0100
In-Reply-To: <20190813121733.52480-1-maennich@google.com>
Message-Id: <20190813121733.52480-7-maennich@google.com>
Mime-Version: 1.0
References: <20180716122125.175792-1-maco@android.com> <20190813121733.52480-1-maennich@google.com>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [usb-storage] [PATCH v2 06/10] export: allow definition default
 namespaces in Makefiles or sources
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
	yamada.masahiro@socionext.com, Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
	Michael Ellerman <mpe@ellerman.id.au>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maennich@google.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=A0rCIzO1;       spf=pass
 (google.com: domain of 30qpsxqgkagmnbfoojdihpphmf.dpn@flex--maennich.bounces.google.com
 designates 209.85.220.73 as permitted sender) smtp.mailfrom=30qpSXQgKAGMNBFOOJDIHPPHMF.DPN@flex--maennich.bounces.google.com;
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190813121733.52480-7-maennich%40google.com.
