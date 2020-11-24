Return-Path: <usb-storage+bncBCF5XGNWYQBRB77X6X6QKGQEJ3L5JBY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x545.google.com (mail-pg1-x545.google.com [IPv6:2607:f8b0:4864:20::545])
	by mail.lfdr.de (Postfix) with ESMTPS id 6911F2C32ED
	for <lists+usb-storage@lfdr.de>; Tue, 24 Nov 2020 22:32:49 +0100 (CET)
Received: by mail-pg1-x545.google.com with SMTP id b19sf119840pgm.2
        for <lists+usb-storage@lfdr.de>; Tue, 24 Nov 2020 13:32:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606253568; cv=pass;
        d=google.com; s=arc-20160816;
        b=E9AMTb+3E2E2vOQ2Yk/Usa213YVo7JJDfoJW7PfXKvAiToFLS7Q9RTNOMhnskNZ3Aq
         f2+meNWL3670kCp3ZSjV5SLTVQEQ+ozxK0YcEQVOUq8sUEbeU1FBTmwOeJvntwCmfKRj
         TQKlq1qh2NVtCDx5Ip+qt0DnuHvWydZyqM9dpASDM0L+qqq9y4XWz8OPVxJm/I9DvSZv
         kS3G0APOFbAqM7Dcu+PB7ch6Vw13sqwkLSWrpHn2YHASE4lP0bGM1zCE1m7H1TBI7hxp
         1Z6dRI+EYs5IDvl4rDXzagM0TokOvRfc31aaMGDkvXjzBj87T+16S9kw5Veusvkp9dhV
         b5Hw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=nDtpXR13gH1hiySA9JQiYTK9RwX9z45CMZePAGtLc20=;
        b=05r1TFWcarNIpbuyXuWJ01P3rozrLPTfH7L0MIhFaykKy+XHSMtak+2uVPbUWYGhHS
         DZAKIsFnAK3NGTVutbMDpqbDDZmfk9ch1qA4QCQlBkLUhOqxXMJqOZzs1urmRgwl/BOM
         XtQESrEB3Q77798uxDCFKzfsavnKywx0AAZwB2ZWH2Ym+65fmpva0G1h/xv2lIa3OSZQ
         Xk1DcjRf15RoUNEzotk4p9R8n8tstO8yS423WAKaD6FQBq2sjBYpKHC0XXyWjKf88ChS
         +g1sVMxYGAHkNMNMDNhNOw9Tg5keQylwb7T/EoRZzMxsKDrkidVQ6lQR2e24m9GcL+01
         BhEg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=lzAwh4po;
       spf=pass (google.com: domain of keescook@chromium.org designates 209.85.220.65 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nDtpXR13gH1hiySA9JQiYTK9RwX9z45CMZePAGtLc20=;
        b=ES2zdF1MUWlsxJVBepEfOMbD3qONprOlGl7l7DdJQOSOdW+E2Bi//GrPMKo8IHDPT/
         1VKxMOKf1vKRo5p+aWyZkPqjbrYZN3rBoZcEwIqVJkB5LVR7MGLnPi56yCK/j2C2mM5i
         NhIR9Eb/cE9xdv7fAx5oQLoRjkOJVepnF/2h4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=nDtpXR13gH1hiySA9JQiYTK9RwX9z45CMZePAGtLc20=;
        b=qIIamiqa4M4jj2u1T/SPZ2nUGlAGbHLpG88dZegjPuJLMPkZTHpaC27buXDfqvj4FR
         M9s2imMhrIrIpJxhtjpFBs2w2drApn04ULSawqc29Ycv+6020jENCVWEN3SiYDpNvw9q
         Ka7EENhwQ26avBatFBUdc3b6rMNiC8HBqzX6teax/PPbZNH7GcuShsSmCOpIKmxZ/g/F
         GIc0UuZ5UMV6DLSLsFkx19gGFWq4d3XYeULxwNqGW54Q7cFTO/Jz0+pO9tXPBSS1qAg8
         qvc05+fJhNw0TXkhPEWPDb9BIZPPt9KizBq/xix2h7LqeurPmJWT5OE12YNDpxAbVPJI
         q22A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM531i+x2vMIiBzwWqUilOQhgXNRjaGPAV15YaHH3QgbK/fuUI7Jr7
	tCfSx+AT16Y177cMZRBFxqXYlA==
X-Google-Smtp-Source: ABdhPJy995Sl5MbGFCUQOtxGEYz9hAjQbGYuZ6+L/oO3a1jj0aMRjzCKBkEl4C/OuJHin9IGVLS2sw==
X-Received: by 2002:a17:90a:5518:: with SMTP id b24mr235216pji.138.1606253567755;
        Tue, 24 Nov 2020 13:32:47 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aa7:989e:: with SMTP id r30ls61962pfl.2.gmail; Tue, 24 Nov
 2020 13:32:47 -0800 (PST)
X-Received: by 2002:a63:784:: with SMTP id 126mr295153pgh.215.1606253567161;
        Tue, 24 Nov 2020 13:32:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606253567; cv=none;
        d=google.com; s=arc-20160816;
        b=MiotKpk1FzGm6RLJZBirk41m5F9hWxqUw8HEtklilbSiKhrkKQmzGg6jBRX25hawAS
         Z9ANVcEg4uH8rVee5GP4u4k37QZn9h/nE+/ESX28HI2mWdcSFkX3jO2GRxWJg+wEuzLj
         iZ7g3ECTiVbsIU4CXRsrWBZlqQVBpmXaDUn3+MccyHXd3W6sbwA/H2ieTb6WpYYm3suJ
         n3UPYIBynla4hU5wgzaIQ8yJTo29qIpDnhr+mhMyNbd+xyf0J5xam53ys+jhmWeyHtIU
         +MJnRw597EjxH5+WPFjNsPtg0fbDiwROE6TiJL674bhF1mkPr9s/aHbC65/Qo3JucvgP
         pnLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=nUebvx46WK355IC8BSYKhA86maU/C5TyOra9y/oS07E=;
        b=Tgi8el56086ibRoIbu/tClMVjJG7wd/CeTsd3FS5Io9RG7NW/tBMzA+Z7Cx+o1rUjx
         rDu7h/CerDDNm7Os0zstCVWodP37TWg9REvv/9Si3WCTRnGb4GnUfw+Y260pfYRxsUns
         HcpXxg+emNzK44R5fOsFerxqC2+NwP4izd52j9CUgp0+13d3FyJAGylzmCRceeq4CiDd
         OvFtf8HIXXslXfc973xlvmwxWYF5FayT8pwqD55pF4hyjxezqmm408PCHDPpmdS+6yl3
         U9ZGVmiCgC4+QKluRHpK74wL6RdgoBdGKNh1C3Mr8gETVgW25aT0rPIdi7pdM3IC69LC
         SKOA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=lzAwh4po;
       spf=pass (google.com: domain of keescook@chromium.org designates 209.85.220.65 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id n189sor33503pfd.21.2020.11.24.13.32.47
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 24 Nov 2020 13:32:47 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:aa7:9af2:0:b029:198:273c:6be8 with SMTP id y18-20020aa79af20000b0290198273c6be8mr329847pfp.4.1606253566848;
        Tue, 24 Nov 2020 13:32:46 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id j74sm15845pfd.43.2020.11.24.13.32.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2020 13:32:45 -0800 (PST)
Date: Tue, 24 Nov 2020 13:32:44 -0800
From: Kees Cook <keescook@chromium.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Joe Perches <joe@perches.com>, Jakub Kicinski <kuba@kernel.org>,
	alsa-devel@alsa-project.org,
	linux-atm-general@lists.sourceforge.net,
	reiserfs-devel@vger.kernel.org, linux-iio@vger.kernel.org,
	linux-wireless@vger.kernel.org, linux-fbdev@vger.kernel.org,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	Nathan Chancellor <natechancellor@gmail.com>,
	linux-ide@vger.kernel.org, dm-devel@redhat.com,
	keyrings@vger.kernel.org, linux-mtd@lists.infradead.org,
	GR-everest-linux-l2@marvell.com, wcn36xx@lists.infradead.org,
	samba-technical@lists.samba.org, linux-i3c@lists.infradead.org,
	linux1394-devel@lists.sourceforge.net,
	linux-afs@lists.infradead.org, usb-storage@lists.one-eyed-alien.net,
	drbd-dev@lists.linbit.com, devel@driverdev.osuosl.org,
	linux-cifs@vger.kernel.org, rds-devel@oss.oracle.com,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-scsi@vger.kernel.org, linux-rdma@vger.kernel.org,
	oss-drivers@netronome.com, bridge@lists.linux-foundation.org,
	linux-security-module@vger.kernel.org,
	amd-gfx@lists.freedesktop.org,
	linux-stm32@st-md-mailman.stormreply.com, cluster-devel@redhat.com,
	linux-acpi@vger.kernel.org, coreteam@netfilter.org,
	intel-wired-lan@lists.osuosl.org, linux-input@vger.kernel.org,
	Miguel Ojeda <ojeda@kernel.org>,
	tipc-discussion@lists.sourceforge.net, linux-ext4@vger.kernel.org,
	linux-media@vger.kernel.org, linux-watchdog@vger.kernel.org,
	selinux@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	intel-gfx@lists.freedesktop.org, linux-geode@lists.infradead.org,
	linux-can@vger.kernel.org, linux-block@vger.kernel.org,
	linux-gpio@vger.kernel.org, op-tee@lists.trustedfirmware.org,
	linux-mediatek@lists.infradead.org, xen-devel@lists.xenproject.org,
	nouveau@lists.freedesktop.org, linux-hams@vger.kernel.org,
	ceph-devel@vger.kernel.org,
	virtualization@lists.linux-foundation.org,
	linux-arm-kernel@lists.infradead.org, linux-hwmon@vger.kernel.org,
	x86@kernel.org, linux-nfs@vger.kernel.org,
	GR-Linux-NIC-Dev@marvell.com, linux-mm@kvack.org,
	netdev@vger.kernel.org, linux-decnet-user@lists.sourceforge.net,
	linux-mmc@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
	linux-sctp@vger.kernel.org, linux-usb@vger.kernel.org,
	netfilter-devel@vger.kernel.org, linux-crypto@vger.kernel.org,
	patches@opensource.cirrus.com, linux-integrity@vger.kernel.org,
	target-devel@vger.kernel.org, linux-hardening@vger.kernel.org,
	Jonathan Cameron <Jonathan.Cameron@huawei.com>,
	Greg KH <gregkh@linuxfoundation.org>
Subject: [usb-storage] Re: [Intel-wired-lan] [PATCH 000/141] Fix fall-through
 warnings for Clang
Message-ID: <202011241327.BB28F12F6@keescook>
References: <202011201129.B13FDB3C@keescook>
 <20201120115142.292999b2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <202011220816.8B6591A@keescook>
 <9b57fd4914b46f38d54087d75e072d6e947cb56d.camel@HansenPartnership.com>
 <ca071decb87cc7e905411423c05a48f9fd2f58d7.camel@perches.com>
 <0147972a72bc13f3629de8a32dee6f1f308994b5.camel@HansenPartnership.com>
 <d8d1e9add08cdd4158405e77762d4946037208f8.camel@perches.com>
 <dbd2cb703ed9eefa7dde9281ea26ab0f7acc8afe.camel@HansenPartnership.com>
 <20201123130348.GA3119@embeddedor>
 <8f5611bb015e044fa1c0a48147293923c2d904e4.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <8f5611bb015e044fa1c0a48147293923c2d904e4.camel@HansenPartnership.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=lzAwh4po;       spf=pass
 (google.com: domain of keescook@chromium.org designates 209.85.220.65 as
 permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Mon, Nov 23, 2020 at 08:31:30AM -0800, James Bottomley wrote:
> Really, no ... something which produces no improvement has no value at
> all ... we really shouldn't be wasting maintainer time with it because
> it has a cost to merge.  I'm not sure we understand where the balance
> lies in value vs cost to merge but I am confident in the zero value
> case.

What? We can't measure how many future bugs aren't introduced because the
kernel requires explicit case flow-control statements for all new code.

We already enable -Wimplicit-fallthrough globally, so that's not the
discussion. The issue is that Clang is (correctly) even more strict
than GCC for this, so these are the remaining ones to fix for full Clang
coverage too.

People have spent more time debating this already than it would have
taken to apply the patches. :)

This is about robustness and language wrangling. It's a big code-base,
and this is the price of our managing technical debt for permanent
robustness improvements. (The numbers I ran from Gustavo's earlier
patches were that about 10% of the places adjusted were identified as
legitimate bugs being fixed. This final series may be lower, but there
are still bugs being found from it -- we need to finish this and shut
the door on it for good.)

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/202011241327.BB28F12F6%40keescook.
