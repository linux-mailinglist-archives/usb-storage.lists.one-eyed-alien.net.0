Return-Path: <usb-storage+bncBDY3NC743AGBBSVEWL6AKGQEJSRGG5Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-il1-x148.google.com (mail-il1-x148.google.com [IPv6:2607:f8b0:4864:20::148])
	by mail.lfdr.de (Postfix) with ESMTPS id E9A84291917
	for <lists+usb-storage@lfdr.de>; Sun, 18 Oct 2020 21:06:51 +0200 (CEST)
Received: by mail-il1-x148.google.com with SMTP id 6sf5017994ill.23
        for <lists+usb-storage@lfdr.de>; Sun, 18 Oct 2020 12:06:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603048011; cv=pass;
        d=google.com; s=arc-20160816;
        b=Z7NVfnwQnhSszKaTz0r/9A8WQera4MRMQQ1eiNIeBrx0qaej6GHBUG8BeKXXeW0NeU
         QCY5mlC7APPDkYWgCckUCHHCyONRwUMYJc3RG+JAG1cirVpOwGkWDYYFdUZ9IQ/yIDy4
         omBgcDwLTD/ahRkLA4upgxvGaDxRnhy7H8jbJhiOsNGG2dcB1yF2xZkGGe51lK9pdWQv
         5lbsqSR7TbpoI5NVGSbQzvVvitfdAYlIe5uO9WHFWM3iED1Klp/vp+6sRXKb2XLx34vn
         2ay2KBRAWISLN2nRZ+hmW2BwizZCWAO2o/3Nj48IGolqtaJROD9lyu+x/AZB9OuTzOa5
         73FA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=QNezOxwVFdreYXISIma+CINDgWekQkFiHxzI2fxJ9dI=;
        b=a+coSVV84Xe6crOCsP/DCN5ieYUsLB9fy9rgFAYGZQoEpQunS5n2UG/kYlug2j1GJ/
         Nqr9F2mwHVSpl+MBzcHNASZ012/eGQ9HlJFe21PVz/wOBpiCL1fX2Rqe0eV0IKYdK+Vp
         edGB6nfaBXCWF8timoFCMdM7EcIt+OdY5IL+34h+ukUh3i3X3b/R+9qwQgaIXIpd6ICu
         ZFTEqOBL4I/RG7sclmwN6I4mA0h6SXcO6vLiLpmk5EPMeTDVhDFTq6Uv+qe8woR6qYR4
         ZrZqZBSkyAp+DFGH1xFytxkq0k+TCKeSt2jqtzR3qIgt6BC8qIOlyeD4yAP9ejA4/qhr
         ppiA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=neutral (google.com: 216.40.44.177 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QNezOxwVFdreYXISIma+CINDgWekQkFiHxzI2fxJ9dI=;
        b=KEOuTgi/2u6ScgfRkfeZYwLPXt8Kyw7B/MMCNDKmg1Cma2CIhchRbV3wI4h84cFKLJ
         V0cLytdsIvYNq+jLop8rlS30yjT57NsfYBELUL6WO/r20x3i1uh9QzpV6vfeLbrf9UkX
         nrB+WEApMHiR9sohKZMtAEEoI87wm4YiHDqps=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QNezOxwVFdreYXISIma+CINDgWekQkFiHxzI2fxJ9dI=;
        b=mkEYItWl2kF9H1v1N9f2bxDNZ61y6gPjV0mzAPIOR5+NJCZMd7/xGOQ0mtyCzMb6Kg
         ixMtBpIoz51EI6kbnSaPHxJGFjQYAouam772Bz6ZKlDdR+nCnaK6K39dXxk532tS0H+8
         ZUBZzJTvM9BKkqPflLcn/f69ga+9/9Veln1mpDr7m/jSB/vA3ccQb3Ux0JNDbVHdirCu
         Bmt1i4Plq+1mx/HIJ7jeryfU5AXjBB4nHWXd9+kqUSwFAK9IAU+sx0oL0UNa/Jgj/BW6
         rUSp1NGksw7IeCwKuy6bWimGbDoOLWuurYjGlBvyIIj5DP7p0NX/6ucRF8k05aDb6n6j
         69iw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM531qWpugBQDlMldae5ynX543C+ZTJp0ryDjY2TuacWHfPYdXr3P7
	aMpQlZLR8XIqdmIAXdvsSocc0g==
X-Google-Smtp-Source: ABdhPJx7GvSurT4tLF29FPUFX8ma8wMo+GeDyiVgB9qQgx0sDnZlJpQa8W3JfrAE8eA5056CMtmYPw==
X-Received: by 2002:a92:bb9c:: with SMTP id x28mr9115094ilk.77.1603048010807;
        Sun, 18 Oct 2020 12:06:50 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6638:14c7:: with SMTP id l7ls833968jak.0.gmail; Sun, 18
 Oct 2020 12:06:50 -0700 (PDT)
X-Received: by 2002:a05:6638:1651:: with SMTP id a17mr8835195jat.39.1603048010103;
        Sun, 18 Oct 2020 12:06:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603048010; cv=none;
        d=google.com; s=arc-20160816;
        b=yoJ+3lohU7Evz/nHQndVQw1geW96VjJT0efVAbRP7Xs9YuEOlyj5t0UstJZH8tTif/
         s6GpkF2nXy1IIRflTD4dlzrxFbja0Zwz4uVlPJeCXbE2AiebwbBgX+hxuBfzJYYOLrlR
         MeGWkrMbjkMiDR3Ec7480jd0PI3fyDjQNjcNaaKb1zNSyGB8zGZbBBGyCe6kyAspeCfQ
         lYh2BVL7FJCOweaZW98Jx2HqvyrI/VdFGlUsH4Swq/yA68XxYbqM8oLBf6Drp2nmtoy+
         5erjm4OxMI/NHjCWve3jYjQ/DIdKe1ayqWwxqu+9TWunb23FVVRWmC3TZLuyKBTQTy9Y
         Uasg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=/QwTUSq7BgMaRqiior2i8kwbxtay/fFh+RYZWTOwdns=;
        b=OgrSaqqkbJnn9hWLdgPLmsGkIyq2c6pMDo2pxfmBg2KkEI4JITAuLBG9gsIpM1+SSx
         n1oJuR+oQmqdL5A6c9ZowQWsg6kMHsSM3JZVtTb/N+6B9z30MBU4WlEY3F2qFKcJmPr5
         9oeuJYEZKe8jJrmWCwek88rb+wsyeGzFCZizl42VxYY1vSI6YjBqDaf5p51J+usgObWF
         pqesxvuXQ9j3tpLR6EcGKSYdn9xwMsd1XW65HEERkfWw2se7DNctH2/Sc8wL6Ix6mMBF
         VmBYvsW+jortMU3x/0siu41gQIeJhE9HyoLXv76RD6ca+N5f92FbDbh5JnAzqs8iZGL2
         DWNA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=neutral (google.com: 216.40.44.177 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0177.hostedemail.com. [216.40.44.177])
        by mx.google.com with ESMTPS id x124si5240456iof.70.2020.10.18.12.06.49
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Oct 2020 12:06:50 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.177 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.177;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay01.hostedemail.com (Postfix) with ESMTP id 70CB3100E7B40;
	Sun, 18 Oct 2020 19:06:49 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 50,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:800:967:968:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1540:1593:1594:1711:1730:1747:1777:1792:2194:2199:2393:2525:2553:2561:2564:2682:2685:2692:2828:2859:2905:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3868:3870:3871:3872:3873:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4250:4321:5007:6119:6742:6743:7903:8957:8985:9025:10004:10400:10848:11232:11658:11914:12043:12295:12297:12438:12555:12740:12760:12895:12986:13069:13072:13311:13357:13439:14096:14097:14181:14659:14721:14777:21080:21347:21433:21451:21627:21811:21819:30003:30012:30022:30034:30054:30083:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: year67_630d5f827230
X-Filterd-Recvd-Size: 3209
Received: from XPS-9350.home (unknown [47.151.133.149])
	(Authenticated sender: joe@perches.com)
	by omf09.hostedemail.com (Postfix) with ESMTPA;
	Sun, 18 Oct 2020 19:06:42 +0000 (UTC)
Message-ID: <18981cad4ac27b4a22b2e38d40bd112432d4a4e7.camel@perches.com>
Subject: [usb-storage] Re: [Ocfs2-devel] [RFC] treewide: cleanup unreachable breaks
From: Joe Perches <joe@perches.com>
To: Matthew Wilcox <willy@infradead.org>, trix@redhat.com
Cc: linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org, 
 clang-built-linux@googlegroups.com, linux-iio@vger.kernel.org, 
 nouveau@lists.freedesktop.org, storagedev@microchip.com, 
 dri-devel@lists.freedesktop.org, virtualization@lists.linux-foundation.org,
  keyrings@vger.kernel.org, linux-mtd@lists.infradead.org, 
 ath10k@lists.infradead.org, MPT-FusionLinux.pdl@broadcom.com, 
 linux-stm32@st-md-mailman.stormreply.com,
 usb-storage@lists.one-eyed-alien.net,  linux-watchdog@vger.kernel.org,
 devel@driverdev.osuosl.org,  linux-samsung-soc@vger.kernel.org,
 linux-scsi@vger.kernel.org,  linux-nvdimm@lists.01.org,
 amd-gfx@lists.freedesktop.org,  linux-acpi@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, 
 industrypack-devel@lists.sourceforge.net, linux-pci@vger.kernel.org, 
 spice-devel@lists.freedesktop.org, linux-media@vger.kernel.org, 
 linux-serial@vger.kernel.org, linux-nfc@lists.01.org,
 linux-pm@vger.kernel.org,  linux-can@vger.kernel.org,
 linux-block@vger.kernel.org,  linux-gpio@vger.kernel.org,
 xen-devel@lists.xenproject.org,  linux-amlogic@lists.infradead.org,
 openipmi-developer@lists.sourceforge.net, 
 platform-driver-x86@vger.kernel.org, linux-integrity@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-edac@vger.kernel.org, 
 netdev@vger.kernel.org, linux-usb@vger.kernel.org, 
 linux-wireless@vger.kernel.org, linux-security-module@vger.kernel.org, 
 linux-crypto@vger.kernel.org, patches@opensource.cirrus.com,
 bpf@vger.kernel.org,  ocfs2-devel@oss.oracle.com,
 linux-power@fi.rohmeurope.com
Date: Sun, 18 Oct 2020 12:06:40 -0700
In-Reply-To: <20201018185943.GM20115@casper.infradead.org>
References: <20201017160928.12698-1-trix@redhat.com>
	 <20201018185943.GM20115@casper.infradead.org>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.4-0ubuntu1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: mx.google.com;       spf=neutral
 (google.com: 216.40.44.177 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

On Sun, 2020-10-18 at 19:59 +0100, Matthew Wilcox wrote:
> On Sat, Oct 17, 2020 at 09:09:28AM -0700, trix@redhat.com wrote:
> > clang has a number of useful, new warnings see
> > https://urldefense.com/v3/__https://clang.llvm.org/docs/DiagnosticsReference.html__;!!GqivPVa7Brio!Krxz78O3RKcB9JBMVo_F98FupVhj_jxX60ddN6tKGEbv_cnooXc1nnBmchm-e_O9ieGnyQ$ 
> 
> Please get your IT department to remove that stupidity.  If you can't,
> please send email from a non-Red Hat email address.

I didn't get it this way, neither did lore.
It's on your end.

https://lore.kernel.org/lkml/20201017160928.12698-1-trix@redhat.com/

> I don't understand why this is a useful warning to fix.

Precision in coding style intent and code minimization
would be the biggest factors IMO.

> What actual problem is caused by the code below?

Obviously none.


-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/18981cad4ac27b4a22b2e38d40bd112432d4a4e7.camel%40perches.com.
