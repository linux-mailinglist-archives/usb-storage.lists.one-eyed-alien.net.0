Return-Path: <usb-storage+bncBDMYPB44VAFRBPMDXLVQKGQEOOOIOQQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yb1-xb46.google.com (mail-yb1-xb46.google.com [IPv6:2607:f8b0:4864:20::b46])
	by mail.lfdr.de (Postfix) with ESMTPS id 18195A6C45
	for <lists+usb-storage@lfdr.de>; Tue,  3 Sep 2019 17:07:43 +0200 (CEST)
Received: by mail-yb1-xb46.google.com with SMTP id p2sf14237447ybk.12
        for <lists+usb-storage@lfdr.de>; Tue, 03 Sep 2019 08:07:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567523262; cv=pass;
        d=google.com; s=arc-20160816;
        b=Kh4y9YDHjtyPq4ClTLTKUPMPWqd/X9XFtG6ok2ui9Hcx138/H+OE6FPwlu6VvrM3s0
         4zQKH8VPD0t4pfEGmimucCMhNA3Tnt0xumEPnV0hQMSkohNKhFqhM9ExNm1LHD2gRBBv
         ctwVTg+T1lHsbosciyUy01I6XwFfKukC5AgATjlFEWENJ8CNoUKNdFR3iy4jmK1ZqveH
         wd+zoiNI9I3L1ocQlURiBRJ8xBWFHtyYFfzscU4hLJc+MvB13ZROFUqLpYsaj5B58QM9
         EIBgRCN6pvTg0AyJF0b58YXLEZPQgBmYh1WtVDwhcxDUdJGwReO7lC1Cxnh0mhxzgDKS
         O9Nw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=3aA3Z8xLVIuwChZirAh4+5E9b1dx/vDrmtjQrHddTyE=;
        b=FGW1DeKTiv49w5HsVVcbZXnlKCUmt9gtrOHibtgmzeYTBwrWrg8MS+ZdeVixYYPqgH
         nj61OMgX02UZQ9IgWHlSLDUFJeeXgQ20B4PxLV5T32jzUQMPiAu32fziKhV9021NVsBW
         m4Jek4bzNUgipjVWZf+qLAvdNZ4W0T8iWRdkJOuuDfIDqAcXtiw2GIm4iwPPWnu8jA9h
         Ni/9xOB6LbpBQFq843W1OdLUMBMZOoIByLV0vvE/7WyGdecxFIEbUeO0y7oHzjjB8lUP
         wMz1el2GOAvJDg+fIIe7vhe+0HDmZcysU3eLFoyPIu0ZfRJnih64zY8/iwqqG/NFB96H
         PGpQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PB5Ah+kY;
       spf=pass (google.com: domain of 3vyfuxqgkagwwkoxxsmrqyyqvo.myw@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=3vYFuXQgKAGwWKOXXSMRQYYQVO.MYW@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3aA3Z8xLVIuwChZirAh4+5E9b1dx/vDrmtjQrHddTyE=;
        b=BqBN9mWCEuKfabyQ44ysFhRdYAy6FqoZh+mj2wjMvJUcQrzMivH/INxvDsvmaDyypk
         +xLEc8FlWILKlWZD8Jviay9SijuJW5H3W2xV4jsW7oGgoHppDPHtYkjKdipi6q2DqCTj
         3E+tmhGDEGyDJ2d3ZA/53gqpoJE/rMFqGiGOo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3aA3Z8xLVIuwChZirAh4+5E9b1dx/vDrmtjQrHddTyE=;
        b=cEvxZtWlmclOHSRnrUeb2AcvW5uzWXj4VEfF2PmmEQOhfiF4PamLDHvm0XaN3HULMZ
         R5F7Aqq2pT1V/TGB9zaA8jhJBR0YlipY1Co1vTppBCIBuWoOpCJPevY7yf36mib1hND5
         G6UBscFdGFuG83vgwNH3jyG7vS7N6BBk1EkdNl2w/fzvWpnGNeVib38TG2SwuvbRfkv7
         NRum6bsUl9wRtUGdE3h5ePIktYwaW1tmp0a9f278kxtnCmDG+ThLWq2ljQQMpGEpVyTE
         7FiX0OQ2LctxZnDNIaH3gFe93cLB7zyw8SGRo2HrvvCuKMahbExJdzicOF8qmJ0XZq2a
         XYwQ==
X-Gm-Message-State: APjAAAVs37YOD6IMVWL8yzQhtoPuOK5ldhd6/YyY0dgJiyahTgM/d5Gv
	5UhzH9mnmfL5zSup8k7S6TWheA==
X-Google-Smtp-Source: APXvYqzU0vw/ZgYuHmkItH8t4fV7ShPGzQR4UZgRJpUm+POuUhwIxjFZ6ZEbnfZ4BfR2Zu7wttYFTw==
X-Received: by 2002:a81:4602:: with SMTP id t2mr21529878ywa.391.1567523262090;
        Tue, 03 Sep 2019 08:07:42 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a81:b288:: with SMTP id q130ls2138670ywh.4.gmail; Tue, 03
 Sep 2019 08:07:41 -0700 (PDT)
X-Received: by 2002:a81:c60e:: with SMTP id l14mr5472618ywi.454.1567523261712;
        Tue, 03 Sep 2019 08:07:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567523261; cv=none;
        d=google.com; s=arc-20160816;
        b=CNLp4D3Q3NjLWy5BK/t9PSx9FlCJchdPjeVJzcVQYss4Jrd7uOMPvjEOIsmGBp0K3/
         9UNTO2cnSFR/G2ZjcLNJ40s6n9BEeNb0/WNPnh2/h86e8Z/byRGTCi0MjgpzqjoKzfD9
         78xPHuBnCIc0NMF6EnqK9OxenJ+19i8vDCXSyD7KGgTt9tRGm7q06DimlMNgeja206Yj
         DIJwq9wJO/fuBCHUV+zwLls2PrFrWC0iYojCQ9eekyOa0OhGszamZkKfox0P2Ymwbo4e
         yHhEuOORv8YIhRviTzcsNlFWiC/8a33Q/qiUv5DJNMX4tCO8Bp+pE+DCMI27oFDd+Xww
         hINw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=QzLwUka7MndmPbLBfBjtnVUWcO8y+yUapUjSVd2AkdE=;
        b=SvL0iLOOInK25Y5AIICUVtVhf0ynJ6KlPtaS7NTofY1QDrL2miQoEf7lUxRi5h9FvZ
         Zk85QVWkWRG9nKfxUuZ7W2klTSLnmDOHxefC8jJtnNy7hBkGJE1kK2U4Eh5IWCPdRXOb
         d2ZbNWzn055NWFOUvbckJ0/Rusdr+1Ojp/68Dt1qpuKtiDCN/sBCFy+EUGWTnBs3x8FE
         HCoDKZEOcZMfoA4KLl7IeRT2cS4pj+zZjKgPi/2ehvidsYHNV/NcKSILHirDP2Bccyzs
         Oyvv4p0A9BzreQy5ZzQ2NjgS+l5FVOTsPrwdA6ClyUo9rhIm2Lq0+AQOZ5B5cTHbG86l
         SYeg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PB5Ah+kY;
       spf=pass (google.com: domain of 3vyfuxqgkagwwkoxxsmrqyyqvo.myw@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=3vYFuXQgKAGwWKOXXSMRQYYQVO.MYW@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f73.google.com (mail-sor-f73.google.com. [209.85.220.73])
        by mx.google.com with SMTPS id s133sor10030573ywc.86.2019.09.03.08.07.41
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 03 Sep 2019 08:07:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3vyfuxqgkagwwkoxxsmrqyyqvo.myw@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) client-ip=209.85.220.73;
X-Received: by 2002:a81:9ac2:: with SMTP id r185mr25908588ywg.210.1567523261200;
 Tue, 03 Sep 2019 08:07:41 -0700 (PDT)
Date: Tue,  3 Sep 2019 16:06:32 +0100
In-Reply-To: <20190903150638.242049-1-maennich@google.com>
Message-Id: <20190903150638.242049-7-maennich@google.com>
Mime-Version: 1.0
References: <20180716122125.175792-1-maco@android.com> <20190903150638.242049-1-maennich@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [usb-storage] [PATCH v4 06/12] export: allow definition default
 namespaces in Makefiles or sources
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
 header.i=@google.com header.s=20161025 header.b=PB5Ah+kY;       spf=pass
 (google.com: domain of 3vyfuxqgkagwwkoxxsmrqyyqvo.myw@flex--maennich.bounces.google.com
 designates 209.85.220.73 as permitted sender) smtp.mailfrom=3vYFuXQgKAGwWKOXXSMRQYYQVO.MYW@flex--maennich.bounces.google.com;
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190903150638.242049-7-maennich%40google.com.
