Return-Path: <usb-storage+bncBAABBHNIWL6AKGQEBFF3EEY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x745.google.com (mail-qk1-x745.google.com [IPv6:2607:f8b0:4864:20::745])
	by mail.lfdr.de (Postfix) with ESMTPS id 91B86291941
	for <lists+usb-storage@lfdr.de>; Sun, 18 Oct 2020 21:14:40 +0200 (CEST)
Received: by mail-qk1-x745.google.com with SMTP id y8sf5860469qki.12
        for <lists+usb-storage@lfdr.de>; Sun, 18 Oct 2020 12:14:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603048479; cv=pass;
        d=google.com; s=arc-20160816;
        b=Cyt7VJW1bgOGyD1F6ZlMZpapygM4JbMhzoyzCxE/j3wWdB0ScXsGMTsRmL4BSy1d7P
         5VlmuRD5RNFS5h/dI9DIMLWHaXdIvgfCFxxWQfQ68EUrVLAX7rGr+Vifu6s74+w6NgD1
         8Cdg46VPW3LZ4+kBcRaPhp6WEQV0VhTJ0ZhUXdkPfOUJtvKzhiapCurQpZb0t9rHRmM2
         xlxf3Xs+eKcYIyBgZNku1tGIVMPaGhL4ADvsnlIhHWdb8PJJGEYih68MTJkSn1jfzTbw
         2Dr/kahoIJ2f5Z0WaRpFgv4gVcgAHWO/5xO6RC4D1qRq7HaNqKbbMxsFkCsW+PwMvNMw
         0qnw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=NnXHuvrIINcslhIdlDwbOcTh0w0DXR0NwQBIn3iOgEQ=;
        b=FbQ35eXfBX2FXxDM1CbGRzvSpQhNCydRHF8+ycDdb4d+/YUCf6cRJ8s3cBL/O39Y8x
         gK9noFBGRReIjmEAn9W9cojT0Xrv8D/yfHixEIhma3OId9t94ijhtzisNtVxKr/mjCKw
         gavk0xIFuKjkR/mb6Wlr24dhRLrmEs+nLVIOEdcQlG6untbMXZ+yK+vRaLLm8zu8gNFu
         FuC9nI1JtWQCW8Hl1L8C7fPKm/7YanbJ2ShzfeWgtnAmJQRuiCzKOzO6IYF0p1y9frKy
         C2eaQPJ1GnCsf8xJPg9u8necpqY86YFejEjushJnDhJKlRfye4APjvGzyxF0uoxOIm67
         OamA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=qhWiWAYm;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NnXHuvrIINcslhIdlDwbOcTh0w0DXR0NwQBIn3iOgEQ=;
        b=N57IZUCkj1EjfS/frPxz1Vih9GVvoemGTi8lpoIcjlopV1hDx2ZOwl4XboD03hm9V3
         UKRZZafzrRvFJHBT3G6IxvsPqlQx/I23sJug/1bP5pn3Qew2/QU9HyZkcl+3rP3RuThB
         oJQJT/lXMq1Rimr47jRP/FJYWT76MDddknmhw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NnXHuvrIINcslhIdlDwbOcTh0w0DXR0NwQBIn3iOgEQ=;
        b=GtSYxwX+5XeUYVTUxrBRw/R7TO1XKx8THFeSEJd6uMhD4WjAJ1KJhLtfTA38RY8atJ
         a4KisMKja0RuIVSoRHoSRMtORftwWvgn+3P6UCnHvXSXwl54+HY9ugAKzDNm/5eKs1Lq
         Ns8+fHmBHbefBKDqzTmPJuDWHDXb72kPR/y7WTSk1dH9VhmnjSKVSjcoxp0QWVYL09YZ
         aldGVsp4gjRPVHzSs3zXeSusdbF27Mxnp0moAHflhinht1b8RBSB5DZt7lbsHqwitWkw
         sxatZafphsYIyVJVvPDjsw+phnKQrUOuCxL4lkbYNq/rMn4VGe8eGe3px61MFTF86qA9
         hGRg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM530ThtY1CvAsPZB6jhbiVm3qOXrYng549T/31kw8NTWA2tXb4DuL
	MZ7+q4+oFMpIZJK7o7HqY9Tp2w==
X-Google-Smtp-Source: ABdhPJxMmzUQrbRViA129dPkZplEPViMhZORXd5CXmrTZbUnLA4TkDdCq7Pe/KC6zYUBBrJVPnYIUA==
X-Received: by 2002:a37:2f06:: with SMTP id v6mr13255490qkh.464.1603048477526;
        Sun, 18 Oct 2020 12:14:37 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:620a:1132:: with SMTP id p18ls3933694qkk.9.gmail; Sun,
 18 Oct 2020 12:14:37 -0700 (PDT)
X-Received: by 2002:a37:a251:: with SMTP id l78mr12814766qke.291.1603048477185;
        Sun, 18 Oct 2020 12:14:37 -0700 (PDT)
Received: by 2002:a37:e119:0:b029:f9:71db:3eb4 with SMTP id c25-20020a37e1190000b02900f971db3eb4msqkm;
        Sun, 18 Oct 2020 12:00:08 -0700 (PDT)
X-Received: by 2002:ab0:b1a:: with SMTP id b26mr5820613uak.123.1603047607867;
        Sun, 18 Oct 2020 12:00:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603047607; cv=none;
        d=google.com; s=arc-20160816;
        b=BbawJwdgK2rtqfQqs3gOR3FR6JJfZtQ+hGW+KAVHUnwEm2DPe5+IpVwYrO45uk+gYI
         26ANuNijAntRRrbMeRecz99mVUny0QRDGVOjVlB6/Jipz7jkkb5BZpnDTxXz2muVpXWG
         5YjTTD5LOGu05EHmR8K9jbIYGg8EuZe2CQN26T14ziNVr8g4yf90Nq7ugwb49zuD3nN4
         bonlEF00IzRM8rYusIczdoHrKQcKi6Qzk5ZPuJPKRLmzL/PvM9nvGnAoxRl8H9wTO6pl
         RZk4tzEin8a11e05cDj8nniqu35NsSYmv3w56RkvwbF/Y51XMuZnyM7PZ4szkcC68n4L
         dFyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=q0BhqrN3gbd6Z80uxUuHxnuOGNa3MQpvn/ujKpbjoKc=;
        b=XnRO6e2hjI1LGeNujMNIx9cxtvCgHOq9AgOjkhU0b1D+eMhRWADMJXf/trFuQ4u52n
         lNCSZCFvJrJUip9rs8UFrZGHR8HHXrZWfkbz1VailPr4an92WfCIQbBfdDc5sh3i1dUP
         /QPXNkeTKxF/X97CGGOtq0ljnxj7mI+0TnWVet8T9v2K75R+2lIeIj/o9FoTe1yH9jN8
         epvICuRAKTcVLURaj3x6Eg4KC11A6MeUMTZsbQyWmmH4rLkuh6uYt9E+9pOupVGswP7q
         Dwn13zujY4p9h7MGCUXVsMemh/PlasCL90VEu6og/EO6omRq2dH6rRHCIg3lzde6OGKn
         pnyw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=qhWiWAYm;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by mx.google.com with ESMTPS id s17si910320vso.220.2020.10.18.12.00.07
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Oct 2020 12:00:07 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kUDuB-0007Wk-NT; Sun, 18 Oct 2020 18:59:43 +0000
Date: Sun, 18 Oct 2020 19:59:43 +0100
From: Matthew Wilcox <willy@infradead.org>
To: trix@redhat.com
Cc: linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org,
	clang-built-linux@googlegroups.com, linux-iio@vger.kernel.org,
	nouveau@lists.freedesktop.org, storagedev@microchip.com,
	dri-devel@lists.freedesktop.org,
	virtualization@lists.linux-foundation.org, keyrings@vger.kernel.org,
	linux-mtd@lists.infradead.org, ath10k@lists.infradead.org,
	MPT-FusionLinux.pdl@broadcom.com,
	linux-stm32@st-md-mailman.stormreply.com,
	usb-storage@lists.one-eyed-alien.net,
	linux-watchdog@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-samsung-soc@vger.kernel.org, linux-scsi@vger.kernel.org,
	linux-nvdimm@lists.01.org, amd-gfx@lists.freedesktop.org,
	linux-acpi@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
	industrypack-devel@lists.sourceforge.net, linux-pci@vger.kernel.org,
	spice-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
	linux-serial@vger.kernel.org, linux-nfc@lists.01.org,
	linux-pm@vger.kernel.org, linux-can@vger.kernel.org,
	linux-block@vger.kernel.org, linux-gpio@vger.kernel.org,
	xen-devel@lists.xenproject.org, linux-amlogic@lists.infradead.org,
	openipmi-developer@lists.sourceforge.net,
	platform-driver-x86@vger.kernel.org,
	linux-integrity@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-edac@vger.kernel.org,
	netdev@vger.kernel.org, linux-usb@vger.kernel.org,
	linux-wireless@vger.kernel.org,
	linux-security-module@vger.kernel.org, linux-crypto@vger.kernel.org,
	patches@opensource.cirrus.com, bpf@vger.kernel.org,
	ocfs2-devel@oss.oracle.com, linux-power@fi.rohmeurope.com
Subject: [usb-storage] Re: [Ocfs2-devel] [RFC] treewide: cleanup unreachable breaks
Message-ID: <20201018185943.GM20115@casper.infradead.org>
References: <20201017160928.12698-1-trix@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201017160928.12698-1-trix@redhat.com>
X-Original-Sender: willy@infradead.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=qhWiWAYm;
       spf=pass (google.com: best guess record for domain of
 willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
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

On Sat, Oct 17, 2020 at 09:09:28AM -0700, trix@redhat.com wrote:
> clang has a number of useful, new warnings see
> https://urldefense.com/v3/__https://clang.llvm.org/docs/DiagnosticsReference.html__;!!GqivPVa7Brio!Krxz78O3RKcB9JBMVo_F98FupVhj_jxX60ddN6tKGEbv_cnooXc1nnBmchm-e_O9ieGnyQ$ 

Please get your IT department to remove that stupidity.  If you can't,
please send email from a non-Red Hat email address.

I don't understand why this is a useful warning to fix.  What actual
problem is caused by the code below?

> return and break
> 
>  	switch (c->x86_vendor) {
>  	case X86_VENDOR_INTEL:
>  		intel_p5_mcheck_init(c);
>  		return 1;
> -		break;

Sure, it's unnecessary, but it's not masking a bug.  It's not unclear.
Why do we want to enable this warning?

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20201018185943.GM20115%40casper.infradead.org.
