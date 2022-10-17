Return-Path: <usb-storage+bncBCUJ7YGL3QFBBWG2WWNAMGQEGOQZ56Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oi1-x245.google.com (mail-oi1-x245.google.com [IPv6:2607:f8b0:4864:20::245])
	by mail.lfdr.de (Postfix) with ESMTPS id 09D596011F7
	for <lists+usb-storage@lfdr.de>; Mon, 17 Oct 2022 16:57:30 +0200 (CEST)
Received: by mail-oi1-x245.google.com with SMTP id j8-20020a056808118800b00354b7e75b46sf4041887oil.16
        for <lists+usb-storage@lfdr.de>; Mon, 17 Oct 2022 07:57:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1666018648; cv=pass;
        d=google.com; s=arc-20160816;
        b=Okx3M3fRwRRPomv/ME3OY+tx88NTFi3ILfz+1PevCNryJWfXj4MrBfJUOq+9aNXDuQ
         BEgHR2+y6gWoKIidjXoS8ALgPiufC4fLUH5O/otbI/iVsN90EzY38CK54F9UexyJaHFe
         C6QZrkGcj/Rv0bHH02If9VzsNiIOijsH7FCPfAYuP/bXBG33X+QaMBi6Ddhi9hNkJg49
         D1KvmNTUdVS6qkMjWs8TdigYMJsFr/efD/7ncH6TgIHpPERN+F6wHiWBzD+uNrsCB+vm
         Dhn7dRacyG5kEmRHvYa9prsp4EDnQiu2z/aawHctXFBNXo4y7bWO3fdecSx+q9xxu3as
         9VGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=/Ch8lGNgy2xNbx0a4/juXoqKDn2la1LIa76UZZ7W6VQ=;
        b=HmZb6WtJ5KbtBpVrGNaG5+L+4zb5rvacplbrh8WvsqJCcT5hvhhykARjU405lzXR98
         r5p6arkJ7mVGI2deRgo52nc4UeV3iSleoli08AwDythlLHDDS3KpdI6pKOYjhNhDGJ8I
         Kgg/wfEXqYCWxBTkQji0YpfIkh2l5lVaNFdAAqOFmAevfU5siz+bta6VkpBZJwOUI5ow
         W7DKTfarmmPP3IuVbjjSRv+ebAi1tz5dZtBZT7fNDi0Qj1ouZHtnf+W6C5Ka5ZUUtGjs
         7tCrqElYQaemPttUpmWxEiI2dwrhWQz4Ska0vw+2iAG1RQCif6hp4vsCCMW2EXKZaL2+
         RGUA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=NchuVzu6;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/Ch8lGNgy2xNbx0a4/juXoqKDn2la1LIa76UZZ7W6VQ=;
        b=fIrm2lU/jq54fm5ja2XzF9hzPOuwte7FjxgZ8NvPbLCxp9i8O0gjluyclLJOLnPsRv
         Lg8cOMKIOjL8IGgKWfZXCnZ2Utcwp0vusIrh6X+a3rZ2A+6ha3mGHCJnvmkpvBUVkxuE
         bIbau8+JuqvZ7n6qU0KlqX+9jC4L+gi0tZmnA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/Ch8lGNgy2xNbx0a4/juXoqKDn2la1LIa76UZZ7W6VQ=;
        b=67UCllNam/wdXdWqzDB5AFCAXfpWZpE9ns5ZYd9YlzBlBCLtFjMBdU3ASBNQMaIIrq
         kH2fWsttmEfmEca/t87B4ptGPbZbNFTROSvUYeZrUwKWQYJphk0KgjBL4ddvtW+wlwhi
         gnDshVGyvPJIKzQv2jhXyOcJuehVtAMZj0dohQhx90DMmmP2VJ0poqsWn+DjAUwMQwfv
         +wLzOk9T13y3rcnxZQLa5LsfQVKVwn2hQ/yeU6ZIZlpbTwjEMBOPEmO46KvJ1LkHBDAR
         9bmXZYhNdbm//KCy/5Ne61fPSz5bJ9BqxB9423N6Zd48fjl0AXSJfKkm7A9fIZ6kWbkB
         C33Q==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACrzQf2EsaM2FkR2+bQReS7XTO657upuRyPgOsMMd7Tb1mYptN3/g83g
	x8V0RR/yisrjgTCeIhBwI0ZhPQ==
X-Google-Smtp-Source: AMsMyM5CMw1xoWtZDtj/LypFbOB4Xn1eJO88Y8aMPQFL5nz5PMPv8MMPaKAhYxbCY+zDMsgmuka+9A==
X-Received: by 2002:a05:6808:1808:b0:354:da91:9df9 with SMTP id bh8-20020a056808180800b00354da919df9mr5291103oib.137.1666018648531;
        Mon, 17 Oct 2022 07:57:28 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aca:506:0:b0:354:4a36:cf2d with SMTP id 6-20020aca0506000000b003544a36cf2dls3289214oif.10.-pod-prod-gmail;
 Mon, 17 Oct 2022 07:57:28 -0700 (PDT)
X-Received: by 2002:aca:a84c:0:b0:355:4262:28ef with SMTP id r73-20020acaa84c000000b00355426228efmr584584oie.14.1666018647898;
        Mon, 17 Oct 2022 07:57:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1666018647; cv=none;
        d=google.com; s=arc-20160816;
        b=oT0VGiYkMzydoM6ukbkRy7ocSqNyeGRKDd4s/ho+paYmvmQfRaWSEgVu/Sjkhgasn4
         pAbipHQvV21zzzVpnrpts/b0oHvukw+yFGW3X8/RKSqUxR8Npxl3ImFZG3hbQvhvNpob
         SIdngOSpvLtuJ1EusndVvgEOB27XImEk8+PeP6nDdZnYHe+RkgcT9N36oUSLCrsPr+Uy
         l8XugGybHaUbXA2u3x5SZZCIR2YA1Cmh8ByY9AIwYqsF2MijlusjjXx4qv1aUgMehbmx
         +N30YJVLt8Cz8PDUiPXV6vJ5FC9yTjLQqtdxb1NH1XNPHtibKa4yL61U31mYBo4aPsO2
         cnug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=+T3BX+95Sbt7RJ7ePtyLUdTZvyOy2IXF8AZwR7tFnhI=;
        b=Ot5fWN5W4swsSOwg1AQPaxDI0wlsFTdoY8uW4sd/im4phjtjWrJbvC6IY5yznS7Wkx
         6Nghm+/UguGylXMr605E7aVJtq2kPpXDsfK5hA3jXKMP8LKwK56XHuJbswD/qNkz7x+D
         6WSt3MiE8+UubqwIKt4+QMJasmKZO5hoehngOYG+fV0bqpLOiMzti73aPWcWwcBuUiAp
         pD6EYj68UGmTXtaEFkx5Gs3ewnLLeu0K0O9CVZIQRbCdhpKn/15EjKdw7QVewLxUQHvT
         cbF4IFl6Buxm5NxPcmntjnETmaCEkFGdGso8o13HzyX4QbO532/6SWLLoS6C2Tj14xKa
         ZjfA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=NchuVzu6;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [139.178.84.217])
        by mx.google.com with ESMTPS id p5-20020acad805000000b00344ef1d1c2bsi7770843oig.37.2022.10.17.07.57.27
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Oct 2022 07:57:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) client-ip=139.178.84.217;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 8E2446119B;
	Mon, 17 Oct 2022 14:57:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B22E7C433D7;
	Mon, 17 Oct 2022 14:57:26 +0000 (UTC)
Date: Mon, 17 Oct 2022 16:57:23 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Pavel Machek <pavel@denx.de>
Cc: Sasha Levin <sashal@kernel.org>, linux-kernel@vger.kernel.org,
	stable@vger.kernel.org, sunghwan jung <onenowy@gmail.com>,
	stern@rowland.harvard.edu, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH AUTOSEL 4.9 08/10] Revert "usb: storage: Add
 quirk for Samsung Fit flash"
Message-ID: <Y01tU0BLnON2zfRz@kroah.com>
References: <20221013002802.1896096-1-sashal@kernel.org>
 <20221013002802.1896096-8-sashal@kernel.org>
 <20221017124632.GA13227@duo.ucw.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20221017124632.GA13227@duo.ucw.cz>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=NchuVzu6;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217
 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Mon, Oct 17, 2022 at 02:46:32PM +0200, Pavel Machek wrote:
> Hi!
> 
> > From: sunghwan jung <onenowy@gmail.com>
> > 
> > [ Upstream commit ad5dbfc123e6ffbbde194e2a4603323e09f741ee ]
> > 
> > This reverts commit 86d92f5465958752481269348d474414dccb1552,
> > which fix the timeout issue for "Samsung Fit Flash".
> > 
> > But the commit affects not only "Samsung Fit Flash" but also other usb
> > storages that use the same controller and causes severe performance
> > regression.
> > 
> >  # hdparm -t /dev/sda (without the quirk)
> >  Timing buffered disk reads: 622 MB in  3.01 seconds = 206.66 MB/sec
> > 
> >  # hdparm -t /dev/sda (with the quirk)
> >  Timing buffered disk reads: 220 MB in  3.00 seconds =  73.32 MB/sec
> > 
> > The commit author mentioned that "Issue was reproduced after device has
> > bad block", so this quirk should be applied when we have the timeout
> > issue with a device that has bad blocks.
> > 
> > We revert the commit so that we apply this quirk by adding kernel
> > paramters using a bootloader or other ways when we really need it,
> > without the performance regression with devices that don't have the
> > issue.
> 
> Re-introducing timeouts for users in middle of stable series... may
> not be nice. Is there better fix in a follow up to this that was not
> backported?

No.

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/Y01tU0BLnON2zfRz%40kroah.com.
