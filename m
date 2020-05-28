Return-Path: <usb-storage+bncBCUJ7YGL3QFBBQ64XX3AKGQEP4EPMOA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1048.google.com (mail-pj1-x1048.google.com [IPv6:2607:f8b0:4864:20::1048])
	by mail.lfdr.de (Postfix) with ESMTPS id F15161E59E7
	for <lists+usb-storage@lfdr.de>; Thu, 28 May 2020 09:54:44 +0200 (CEST)
Received: by mail-pj1-x1048.google.com with SMTP id a13sf4370605pjd.9
        for <lists+usb-storage@lfdr.de>; Thu, 28 May 2020 00:54:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590652483; cv=pass;
        d=google.com; s=arc-20160816;
        b=0ZP1cGFJWGqsf30fd/Ee6/JdkbdtEer74qsAqM1ESJ3zhofcfLA0boILX1GTEz68aY
         oY9T7EP1DPZEyShgWP8f/13fgqZZehH10cjc9TSV4dR1GH090sTn2zaHUiH2Qms1Jige
         Plv3nHG0VUwLixXNz0VuwsNeakqj3W0ft8fmaek3vS8Ikb8yZja3ZD/WqqZnSMep8DeQ
         XPs27Wy5DJ1YJeW0oNvLaGmki2ibEAXexFT2jnDlzwZRgZXZ5DRQcPDsg0iPBDmcr9Di
         rVqgsjKH5/YHxUW5OypnkqUSkR8zGLqqItoNUfIpekMUJQ73TZQmGedYLC1ODMehORcp
         CNdg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=BoK/kti9YtvDXQYKbLvqiPx9mozTneu7kHEcG7P6b8A=;
        b=B4boDMHvxOBXoNQgpgCoZzL79ws6Mw6fripAY4zLacxenJ8+e6EiPi0Y7JtAtW+zww
         w5rhn2r6/AoIm9RcyU735uCBc4HgdGp5qgMaPkYTERu4QKpT12AIRF4rI1YWW97ynyV7
         6Wx3LjDsmBAwzt+rvnVfnLl3KrUQffhXvUAx3357S7tcbb2sVEeXpDgsO9kQyjiUm7od
         tex/NhwH5U83dJkIuQZVimQ/8jdkFfsry02oMg65z0pjp0g6WuQ5mZXy6uwatWVi2hXh
         f5Ilmy3yXmTS2CLMotBgQy+v1C07EPM0E249DZKItUL0mnQQEMvX53iQmNCxl0BLHq8m
         05/g==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=pQlkUS2W;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BoK/kti9YtvDXQYKbLvqiPx9mozTneu7kHEcG7P6b8A=;
        b=YiL7AOz2OfsJno6QX1ndzs/YtdWBwa/iRG53XyDZoSVL5dXTa2Mw/hMrVYjvMongPz
         nw8bGideqO/Nc8Itq+C4R2ZkuVCFrIn5daaLSpuCnr4gO5+N1ULMg05LAGA+3nEtWK+N
         bHNecCqCf3XfzYKczSqOCM2aNYNFB+fF+okxQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=BoK/kti9YtvDXQYKbLvqiPx9mozTneu7kHEcG7P6b8A=;
        b=eJniViDaCxZ68VmsG6QTfMeuBP8LT1Of+JX0d6i1rNvOncOA3i83V1DJpZKhpM0Wvy
         IhbV2CshCJLUg8HwxC8gPG3EdJMIHSSS1w55Wk5LilOY20ppZdhIENl3/NY2Xf/d9gpY
         vLjHG1REfZwKiHZ8gQOwu5H5G0ZzB6LtjTVE2nlR7fUdA/e4gcNz5sDolK8Gq6i4USW7
         S54W43mHU61stnoltxzofOe2S49xgi/balIexNGEa+G6B8Wzm3edvjqw7WoJoEEoJLgt
         9HcMJITFkLct6+ZFbs/HbU9dXq5DfJEq821AuamNf+IlZru42qbfww3xpvxOuoaGzlC6
         v4aw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM530prOZve+XK5AuPy6apm88MesDRujD6uSYbqV+l0gcRpkoVlwdP
	Zsez/EXB/+8543oMLUx58gzU1w==
X-Google-Smtp-Source: ABdhPJwf7bWov2/PBqcMzXGPxmf4qdFh4zqkRSGgU6EK3uRfi6qozQj4xA/aREFd6JNMOwBojzenXA==
X-Received: by 2002:a17:902:ab87:: with SMTP id f7mr2445043plr.166.1590652483678;
        Thu, 28 May 2020 00:54:43 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:7b82:: with SMTP id w2ls683346pll.1.gmail; Thu, 28
 May 2020 00:54:43 -0700 (PDT)
X-Received: by 2002:a17:90a:8c8e:: with SMTP id b14mr2325752pjo.222.1590652483077;
        Thu, 28 May 2020 00:54:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590652483; cv=none;
        d=google.com; s=arc-20160816;
        b=W4o7uR+9OWqydf9GbA0lKB3BLRgUs9tAtHxu0sC+gomPs37xSpo9MwBY26DfgWODKe
         CYqZxJfDK25RWhPcQB4cmIlOFl3AXxr2zSKh3hR7JWxtJMxNT/FWgNHEH/zil72NzSDS
         HIo6KMdJYBhyo1GZUs1EhzAx+7V3n1tL67HacRCQXA5ElinaMnGIbXmfLSgWBKWTMdcG
         PlXEXTXheBPDyyFP36DTEfX+WKWeX5wK0ybktpzzZcKkN5T7V63Tt8riAxCcay/edzCm
         om4SnlvjrQkmNqUDg8bW1pnhxNGcRBPkQNqRsCd+SfbCoG0pENzloX4LeivjtwghS2ui
         CRVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=w6eQOa94FQl9mzF9BALtb+pKgHUqBqgJUG/XeHS+W98=;
        b=v5pRRaeFdfAeChMDPKAcDfxK7t80ScvuLhdr2dLo0U5mBQ1Iyvy4dwMBW7yfUfPk9i
         Cy3dj9sr1CMracyBhhR7pMy7kxpaK+oXkOv6JIQL/IW4J28NoiSTFKq7CG3WUo2sBTST
         8/wCExugNZF4L/L2XMlBkr9WxhGJsy0Bv7ukJQOCoj8r9I+XJYiv1CV+A8nXksCunvcb
         puZ2kqcCaTkwBGFRLLJUvPTOXRa71kyltrIKhr1a3R2imebKZ4pKSkYVBJaYx5ktmEoI
         zIeBf5LFvoaBwRQ1OqWTEQ7KvoSJfbM5LEmbh5R2bCUG/QGCqRkuY40Ubv2rYUhwQiP3
         3FHg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=pQlkUS2W;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id f12si4243112pgk.443.2020.05.28.00.54.43
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 May 2020 00:54:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4F96320899;
	Thu, 28 May 2020 07:54:42 +0000 (UTC)
Date: Thu, 28 May 2020 09:54:40 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Zebediah Figura <zfigura@codeweavers.com>
Cc: usb-storage@lists.one-eyed-alien.net, linux-usb@vger.kernel.org
Subject: [usb-storage] Re: Bug 207877: ASMedia drive (174c:55aa) hangs in
 ioctl CDROM_DRIVE_STATUS when mounting a DVD
Message-ID: <20200528075440.GA2881385@kroah.com>
References: <7d0b20b9-4735-bbed-bb50-72764aefd6d8@codeweavers.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <7d0b20b9-4735-bbed-bb50-72764aefd6d8@codeweavers.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=pQlkUS2W;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
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

On Wed, May 27, 2020 at 11:23:13PM -0500, Zebediah Figura wrote:
> Hello all,
> 
> I was asked to report this bug here. There's more details in the bug report,
> but it's been proposed that there's a deadlock between device_reset() in
> scsiglue.c and usb_stor_control_thread().

What bug report where?  Can you provide a link and the details here in
the email?

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20200528075440.GA2881385%40kroah.com.
