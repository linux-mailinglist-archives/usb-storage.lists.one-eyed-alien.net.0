Return-Path: <usb-storage+bncBCUJ7YGL3QFBBCFMV76AKGQEBT277II@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x448.google.com (mail-pf1-x448.google.com [IPv6:2607:f8b0:4864:20::448])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F53E291611
	for <lists+usb-storage@lfdr.de>; Sun, 18 Oct 2020 07:43:38 +0200 (CEST)
Received: by mail-pf1-x448.google.com with SMTP id c21sf3906500pfd.16
        for <lists+usb-storage@lfdr.de>; Sat, 17 Oct 2020 22:43:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602999817; cv=pass;
        d=google.com; s=arc-20160816;
        b=W6RTiYjFP7/8LVbkha59DUljoF9wLa9d4hfvVzTxZQWpmJRowR4j5HY9VV8WcqX1CV
         6BNanpxVDbkrA4QEj1g9EwkUp6Ne2HwfIRe3XDrcC+710AkWce4OZ4F5H9RVUJxHfyMU
         LJ0mXCoZWNOKzs/x6Pyy5iLmEnIAHyOcfcEh85xJ8bFm75SwsHIVbdCLC95gyQxBsQba
         qJtka0opqeQ7/U3RxHAPP68+RO0zsmNSmd4z6uKP6hM/ZTbZ2VigVE1ygHwy/jsRnjGH
         QaTHxg1EjV0p/g2q9YUpxMj5QbHw3CnvMZ/sj0y7atSs5oQ1U4LdVrBz/JC91Fb+vBlT
         mvkw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=+xPpHJOJlBHGh2SEolhJFA3ctb1ZUxgvUWZ3OGPiXZk=;
        b=RbWX8Tt+ITZYa9NJ5BT5wnMfeZJkFI8Rqydzdivq2WFAi9oHhAZzCHPS7NSUU+D2bi
         ZfgOEpozxinIMAUHhoKbddCgalsPP2CU60EC20jkWJCsRkp+XDxh/tNxZjbo29S/qg70
         i+SumlEQP4Gg6zZ/AMhJQmzG6Hdm7DNAdf7rOWms9VquRoD3gtcEsp1kYd48+46SGEk1
         exlfaAS6r/f6ZWDBU3YzOD9Sgz/OVxiMrDOH+lg4h5SRQx7QcD45j0pZzzvEQfYGP7iv
         4i1rzguqPwWyjSZmt3sUksjDTJGHqIP/enj4/JZWKLSyDQdOOC5n22EUTHys0XgwiCXH
         bsNA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=w5E1+nGV;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+xPpHJOJlBHGh2SEolhJFA3ctb1ZUxgvUWZ3OGPiXZk=;
        b=BQof7x6sJBg/xTKuwZciiGFlrFuQCjFO14FT1ufVNjHb82onddpPVj4DhnTnE65ijH
         U//UoBOP+jwqJqbeeCffM2khocjRZ0weS+l6gPEkY5wSVHHx3pJALG7s0WsUBjvR48bn
         KCAJxb9AmIyx7MrG9AYtjVzqBCW/ST6iR8nyc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+xPpHJOJlBHGh2SEolhJFA3ctb1ZUxgvUWZ3OGPiXZk=;
        b=YiEDX+hwrOfd0gBZsRAtCeRWTxm5R9+cwxtqiZ6UXsshwm7UhNfmiZdhX9oP2/DvMU
         9/fUJ9pLo7ZBdL4jsMeShxEL2cfCZ8yw6cd/JXe6dzf1M5T+F66bfJXSpJQ8RB3BtnUC
         SiRTvD9iDlPU7nX8F5S86+s4XrNeuEjpgCN6x8sHfUd07fzpVa5RjMglJ/80sU2TZ0G8
         W6Hc9C/qHLkMBC8gAZTzy2hiwQpTDror979147s0PaBkypHudOjKoDmZy1mntJ4FG45h
         o9v3g6eorS178gAL9zwqNkWQe1eL4sUSl6Lcb8mRChDAvHuLodZOLqwub1vfRV8OxQ1D
         +SBQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM532EffuV2NDYD4IOadMdoTriIlqvdSDlDQas3YJCO2YgexpsT9Bm
	oYDO9O4HGJyKqNwLeBjQ22NF5A==
X-Google-Smtp-Source: ABdhPJy5SgKEWhXNzqy707A29KeBgIBuZurikpCBPD3DAIOIRQOVp4Jftpr75wlCLSIKi0Ak5gk1Jg==
X-Received: by 2002:a17:90b:902:: with SMTP id bo2mr11588751pjb.169.1602999816639;
        Sat, 17 Oct 2020 22:43:36 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:5d88:: with SMTP id t8ls1008866pji.2.canary-gmail;
 Sat, 17 Oct 2020 22:43:35 -0700 (PDT)
X-Received: by 2002:a17:90a:de98:: with SMTP id n24mr12183252pjv.100.1602999815837;
        Sat, 17 Oct 2020 22:43:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602999815; cv=none;
        d=google.com; s=arc-20160816;
        b=Ig/vBUmsGkjYoh34ZSpiz+Z5h5aC9bZgI5dP7QS3r4HNICrrP0VdMiOKDjqIkia0Lh
         XJL5H71bY0U0mKvH7Jb/jsqLzpmbauQeOBaZN8iL1DVyu5H0NiR5moDPa5OYhIT65zEv
         eqcXC94luBmVeKvyPnkMTD4fsiDz6EfaDOIbz2nR9zCOARJUKca9VJRfEENkRZ9Di2Nm
         Zg6MIfTImhilPBTf8QUyDGmP6I600TXJz7f6YuzwHdL1+CJHjU3c3BHxrgCB6kBIc2CW
         KwD5yKUQRVm3DJVqeYzcHytl9cdynWNYxXC4zoqClFmK+GczAs07nvGxWiSmw9F7nfMS
         b1Iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=JurCVFtAoyh9qe5r+OuCp4/b4fTGbLU/ueayB1ZEMFQ=;
        b=E54LGsSqkrz5l3oKURYKi7q2S9L9J5u5vFrZh3yVR2XUMB8UPRxwywyJVUvAFUd5gl
         j472EcmCJsBdzrKglduLsqJcGTl3F+julBnOVuPy0SWFiAOGiLEs3G3m7ubFmv8VBKNE
         8JpxB0g4WfRwZa1n8jSYWg67GM69UenlI0H/1daUmgLfLPpIvUnLSeUwpMAbMOvYKBZF
         vbdG+PS7OY+Yhq2MgUrjxeCNy1tATYY5gxqGirnlI9vNHiG90lr0UXQfflRKA9jLe4El
         UiBlI3wQV+Oh+cjzCX3zc3+35p2AKrsVAZSmuNjLvfUEO7bFK53L2Jwh+rAiS0n/esgT
         +zkQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=w5E1+nGV;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id r32si7603054pgk.546.2020.10.17.22.43.35
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Oct 2020 22:43:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 781412080D;
	Sun, 18 Oct 2020 05:43:34 +0000 (UTC)
Date: Sun, 18 Oct 2020 07:43:32 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: trix@redhat.com
Cc: linux-kernel@vger.kernel.org, linux-edac@vger.kernel.org,
	linux-acpi@vger.kernel.org, linux-pm@vger.kernel.org,
	xen-devel@lists.xenproject.org, linux-block@vger.kernel.org,
	openipmi-developer@lists.sourceforge.net,
	linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-power@fi.rohmeurope.com, linux-gpio@vger.kernel.org,
	amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
	nouveau@lists.freedesktop.org,
	virtualization@lists.linux-foundation.org,
	spice-devel@lists.freedesktop.org, linux-iio@vger.kernel.org,
	linux-amlogic@lists.infradead.org,
	industrypack-devel@lists.sourceforge.net,
	linux-media@vger.kernel.org, MPT-FusionLinux.pdl@broadcom.com,
	linux-scsi@vger.kernel.org, linux-mtd@lists.infradead.org,
	linux-can@vger.kernel.org, netdev@vger.kernel.org,
	intel-wired-lan@lists.osuosl.org, ath10k@lists.infradead.org,
	linux-wireless@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com, linux-nfc@lists.01.org,
	linux-nvdimm@lists.01.org, linux-pci@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	platform-driver-x86@vger.kernel.org, patches@opensource.cirrus.com,
	storagedev@microchip.com, devel@driverdev.osuosl.org,
	linux-serial@vger.kernel.org, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-watchdog@vger.kernel.org, ocfs2-devel@oss.oracle.com,
	bpf@vger.kernel.org, linux-integrity@vger.kernel.org,
	linux-security-module@vger.kernel.org, keyrings@vger.kernel.org,
	alsa-devel@alsa-project.org, clang-built-linux@googlegroups.com
Subject: [usb-storage] Re: [RFC] treewide: cleanup unreachable breaks
Message-ID: <20201018054332.GB593954@kroah.com>
References: <20201017160928.12698-1-trix@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201017160928.12698-1-trix@redhat.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=w5E1+nGV;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Sat, Oct 17, 2020 at 09:09:28AM -0700, trix@redhat.com wrote:
> From: Tom Rix <trix@redhat.com>
> 
> This is a upcoming change to clean up a new warning treewide.
> I am wondering if the change could be one mega patch (see below) or
> normal patch per file about 100 patches or somewhere half way by collecting
> early acks.

Please break it up into one-patch-per-subsystem, like normal, and get it
merged that way.

Sending us a patch, without even a diffstat to review, isn't going to
get you very far...

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20201018054332.GB593954%40kroah.com.
