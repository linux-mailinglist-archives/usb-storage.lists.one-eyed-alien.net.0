Return-Path: <usb-storage+bncBD6LRVPZ6YGRBLOZZWBAMGQEVH5ZMKI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf45.google.com (mail-qv1-xf45.google.com [IPv6:2607:f8b0:4864:20::f45])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BE1234086A
	for <lists+usb-storage@lfdr.de>; Thu, 18 Mar 2021 16:07:26 +0100 (CET)
Received: by mail-qv1-xf45.google.com with SMTP id x20sf20916687qvd.21
        for <lists+usb-storage@lfdr.de>; Thu, 18 Mar 2021 08:07:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616080045; cv=pass;
        d=google.com; s=arc-20160816;
        b=e5WOPLgK27izQOt8KEcjn2/mBHPDU0hK9TSRpFJ/DFcFpgBe84sLVB1UQXQ7PWx6BF
         Kwajn7tcdXDmGyU6BMeztDwW6/wTL+978uZt4KJ5yb6LVbC7mRE+V/mc25pTbAcxVuAd
         7o8oQgvFnjdVjbDW8y0XSgWs1qdpaZBdUqHfqZBE9UBBT5pEgINOt0PW3xwUCda3dihs
         JZJGeuSyPtcmnEU7wv34zcxOWcmsGRnNlpDmwGmVk+1tfcvtVbQPOkFDkO5VwXwvfuZ0
         nHOYclKnUDDlgB74F6PlOet2AL2WwAOj7aKw4n/37EEvjecFP7Pac3bBCyOB7mYJLJwD
         s1CA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=yRDVs13Yn1RtiK2EcHJoksU15DllD/FlCiqZZ94bMnY=;
        b=JW+cXhzIAUUgjudOxZhsI1WRx4sud7+XbpxSjgBM9U9nmUjqdp54vWuB6fI1CkI99B
         FjGwIf2SPMJF0oC9/54dDg26m/Jgl9OeUjPJ1q5Ip095m7xpX9NwonjxKUqGZ57/f6EL
         B67Lr0ZwLeySYaelqY6KFydCdaHQ8Hu3AzTnrJnD+ZIc8XAFwBcB5iKuv3a6AXLdb8tL
         sC9s4lQbNg1Is+ldjU4Wew1ccdMqyWBS8Asby72Hf/RmVVQr6G+W9fz/mHjsL6c8g0qw
         77ARb8PB/igKwZmoIJ7lnWCQiopqXwVQ10QgPC/j1djjbMjKSgrSfLQZf7N1q/gkbLrL
         XHBg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+605a82f6@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+605a82f6@netrider.rowland.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yRDVs13Yn1RtiK2EcHJoksU15DllD/FlCiqZZ94bMnY=;
        b=O9Zi2VHSL+LcsK5x8zoSIdWnOi3Cysk5If+9XQyg+9HLZA1/LmZzx0uoPEC4aOIDXt
         oteGGm9UY1BUatjuKAE2ZiKUbWqyOM0dwO3Iy+KNKXiz6D0k/8cYdVs0OakUTDiDNFFD
         EMikkxAIsyP6tp2Gtpek23t7WXdBTMcdPsRT0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yRDVs13Yn1RtiK2EcHJoksU15DllD/FlCiqZZ94bMnY=;
        b=VoDN68lReNzOBkxoqyCTmzAbJKuwMdY2CvKA+ONJEU+/1tx71OtE/QLv5NU39r8Y8g
         xYtUTfda8Y046DFM8CrX4z1V6W8HrpdwxYwayUH7sqU5XTavf3DApTGKyjZSTKxbzPwJ
         0SItb20Sx/9RSGA+yZF1anteGhpiQeg07J0R9KswZZSGEdx3jvUaCO4Rm4k2IpTv1xZt
         O1zoSN1D+WF1iGyLY1sbjhO8AhEJcbOO6VN2XfZTih+7MrTed0EAqLeNWiFoufWxUSa0
         Wmmm72mMJZ2E94h5b6Rtv9NSBZHQt8WmvyHpw61fk63Ii1wteow8P9c3m+G2nPTf++oF
         meyg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM530g14gau4Quklv5cFX8sFCUXRiIoPjvQJwn/pXN5ALjdITxdoyM
	rEmcpRLBRsFkIZW2dZdmXzmEXw==
X-Google-Smtp-Source: ABdhPJz/hN8xBlLAif8x2oTmqPEk5eFxDsCvSDwWJ3m7h4HqdjYctbEyYqnRtT8aRWTL7jK/r3hE9w==
X-Received: by 2002:ac8:787:: with SMTP id l7mr4096959qth.280.1616080045198;
        Thu, 18 Mar 2021 08:07:25 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac8:5810:: with SMTP id g16ls987484qtg.11.gmail; Thu, 18 Mar
 2021 08:07:24 -0700 (PDT)
X-Received: by 2002:ac8:bc7:: with SMTP id p7mr4235938qti.207.1616080043942;
        Thu, 18 Mar 2021 08:07:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616080043; cv=none;
        d=google.com; s=arc-20160816;
        b=xbaiO6089Rc6UxGcNaJ6hMXqeRcMbrYciytgwANALT10ffVn9DTCUZ3vzFa8x2d4tL
         KV0JvkynGXwzCd7q6IwqdNXrLwf0MKqK4geFcCEP+yZHMy7aHSRRC0axN4H6RJEH19+t
         jjg6JHXUnYzWFJ828/v1M4EtC0z8HJWTmD6sJSAk6PMd2uLKW77ph9/KUrgMLGySk0ks
         xuLnYn5gIw+LkVlyzC6UWBYSLlwe0cdbnXAsr3FXQ3E3kZGtoIX/jzXJay/GbCxw4aCu
         dwNPTcTzKCT3AlG8dCPhuDgybDNkYXIWfaTdkRcEpYsXw83lL9Nrwp1pOaUoNJySLanx
         4vvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date;
        bh=6yP7EZBQB0V1764UjK8Ti/mCdi5G1pS6M5qNPyYPN0E=;
        b=dg0gEOgLsnW6D6aewIICYVwOhnx9Y/MehQrolxg4DMtgia39tx+niEfzouI9dEChyz
         HegXJDd3S+S96JG+sdZjc3ac3aleMkbliUmfgQquLhI1EhPPDLHBG27X/V+5xsCBeV2A
         s1VbxsMBVue2KM9uoDFhP/daPRcb80Q7BzfNiH3POe0zvQcCCelB2EbSeeM2KmCs85F3
         N7WzhQV0UqXgtV7Zhrq3mKTHsDy/GdMFflOu6e3j7RVBt2R2i70DQzPfMHL0iv5vDvHK
         WX3hEp/PY2uc/Q1Se95Dqz+5zOLZLhp2A3qQ/TeyZkLj7HAwnr6l8xkDROXLTtBjRYwe
         br/g==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+605a82f6@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+605a82f6@netrider.rowland.org
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id y2si1336480qky.120.2021.03.18.08.07.23
        for <usb-storage@lists.one-eyed-alien.net>;
        Thu, 18 Mar 2021 08:07:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+605a82f6@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 529151 invoked by uid 1000); 18 Mar 2021 11:07:23 -0400
Date: Thu, 18 Mar 2021 11:07:23 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Tomasz Torcz <tomek@pipebreaker.pl>
Cc: Greg KH <greg@kroah.com>, systemd-devel@lists.freedesktop.org,
  usb-storage@lists.one-eyed-alien.net, linux-usb@vger.kernel.org,
  Matthias Schwarzott <zzam@gentoo.org>, hirofumi@mail.parknet.co.jp,
  Mike Tsai <miketsai@amazon.com>
Subject: [usb-storage] Re: [systemd-devel] [PATCH] usb-storage: Add quirk to
 defeat Kindle's automatic unload
Message-ID: <20210318150723.GC527768@rowland.harvard.edu>
References: <20210311143912.GA257360@rowland.harvard.edu>
 <f2acfeef-a81a-d7c0-90a8-b290a18cb742@gentoo.org>
 <20210316162650.GB448722@rowland.harvard.edu>
 <031a20c5-27c3-cc13-6e0b-a308644abce4@redhat.com>
 <20210316170433.GD448722@rowland.harvard.edu>
 <1d9f059e-8b21-0895-9a50-39b6b1a5cc5c@redhat.com>
 <20210317151746.GB488655@rowland.harvard.edu>
 <5f8c0755-0884-f505-c4e8-3a5e89001d58@gentoo.org>
 <20210317190654.GA497856@rowland.harvard.edu>
 <YFNalS7Sl/l+zywM@mother.pipebreaker.pl>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <YFNalS7Sl/l+zywM@mother.pipebreaker.pl>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+605a82f6@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+605a82f6@netrider.rowland.org
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

On Thu, Mar 18, 2021 at 02:50:13PM +0100, Tomasz Torcz wrote:
> Dnia Wed, Mar 17, 2021 at 03:06:54PM -0400, Alan Stern napisa=C5=82(a):
> > Matthias reports that the Amazon Kindle automatically removes its
> > emulated media if it doesn't receive another SCSI command within about
> > one second after a SYNCHRONIZE CACHE.  It does so even when the host
> > has sent a PREVENT MEDIUM REMOVAL command.  The reason for this
> > behavior isn't clear, although it's not hard to make some guesses.
>=20
>   Could Kindle be fixed not to required such workaround? Is there a way
> to open a bug with Amazon?

You really should be asking people who work for Amazon.  I suspect that=20
nobody who regularly reads this mailing list knows the answer.

(If you look through the MAINTAINERS file, you'll find there are a few=20
kernel developers who do work for Amazon, or at least, have @amazon.com=20
email addresses.  Try asking some of them.)

But even if the Kindle firmware gets changed (which I doubt will=20
happen), we would still want to support all the old devices that aren't=20
running the updated firmware.

Alan Stern

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/20210318150723.GC527768%40rowland.ha=
rvard.edu.
