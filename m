Return-Path: <usb-storage+bncBCUJ7YGL3QFBBDGC6OUQMGQEDAOFXVQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1047.google.com (mail-pj1-x1047.google.com [IPv6:2607:f8b0:4864:20::1047])
	by mail.lfdr.de (Postfix) with ESMTPS id 733E37DA661
	for <lists+usb-storage@lfdr.de>; Sat, 28 Oct 2023 12:23:10 +0200 (CEST)
Received: by mail-pj1-x1047.google.com with SMTP id 98e67ed59e1d1-27ff9e2ffdfsf2348581a91.3
        for <lists+usb-storage@lfdr.de>; Sat, 28 Oct 2023 03:23:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1698488589; cv=pass;
        d=google.com; s=arc-20160816;
        b=gEOwjf4wg3+NIsv2rUyn8MxsIvlIAE7zLXKnauMrhmlZmdGhfQ00GrOgLC1lszF8bW
         jorfM0Df+IVsGgF4X+8oPWGsMkalExJ6eljC9k8TpmiLpUjJteZmqS4Agtgc26mtZAat
         PDdVkmOLMBQ6CcsgqOT+dlHO76Vu3BTA0sZvdX/MIkMiLlQREDHIOM4QSJZ4Tes4rinO
         ho587rcPmn4IZ6AtyV+2OWXh3sKH+aSw4xphZZF+Hd9SOf5U9PrQGy3+kQJnYBatWGwC
         GMIbvTvkUc3H7n8kNfnwdgxAoFvyEe1jC4+jT16jkTEtVfFsGr8VSo6/syunk2GU1UpE
         9jxA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=RFUPR2MDxHSpOPoJEB3uuOl9fwbipmRX9i3lTfByJco=;
        fh=XY/oKcch/eMwojFg3NEzNI3dYvMwhtFDBHi83HM+kqY=;
        b=NBJ9pA7N3bi9GYJCwBhRs7mCoiOhwvebve17IghVbCCMiMrhjaJSqK+G/S7L7/tFZr
         ejoM8wSM9wdgZrES9w6bX3Ydep6kD9wODtbdh4CHK+9qvwuOxCDpspeKCkZwMAAnvXxu
         cvXFzKCBW82P1NHenu8jCAHR8b9fjrzNQtkphapZqhijNOMsM8x2Mj5iEALlK5O1F1c8
         xoCeVD49nrIm+AIVc5j5s6x3mfeyfKELhpoTt+vMVwvaQu3vUpu85Sn8X7nFCNBadDab
         jo6EsRVg9F9TXJMXFDWzNqIKqR9NT4uH44CG6YqoFlHvTnjWcnm7LZEXPDz4BTnxx+Q0
         aNGg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b="X/iIJVX7";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1698488589; x=1699093389; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RFUPR2MDxHSpOPoJEB3uuOl9fwbipmRX9i3lTfByJco=;
        b=KdZQZzQSkiLyTAn8oP2ykbvmL/wTJjaEMKZnh/nEeBYduQdKdRtMZNBU8B/ipO8z9/
         0AwKvWxKNc6Zn9ay5tjwCbpKIYa8EPTG2bBnnuw1Ksdek1tCc2DS1GA5vj4Kg94jQizz
         xe++sLtMvD1v0qqDDmWPqyotaJkWiuv2/2CWY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698488589; x=1699093389;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RFUPR2MDxHSpOPoJEB3uuOl9fwbipmRX9i3lTfByJco=;
        b=Wfupg9F4vbcyvwXwFFMIoe9qbO9GNN8MisDvAl9uGz3PNAK9GeCervKzlRExmAzvIx
         pkjk41tOp2PCCyNVjsRXTxZFV5u2Byk/Ep0EpPz17eumvglJ3xxV8s5Elpy6Ejs6wAx8
         SmBrZYyi/47MYRJKi9O0Ud5SNQCenDsJfAuSYEdIlJgpv5ip2557+fU8gzcu2IqB+amM
         e3pazCY7V3YhohjlTCTzWSKxdGEtM1tO/1e/Pps5HQ+lVsAZH3/GU2IfXF2MoT3wh9zd
         xnRiGR+sBNCUbo8cafVzs/NOQWr56I7pjhkecpMWJ1QOwtpRIYoGNe3HnJJD2ZTCsrji
         IAqg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0Yz1lcu6ydbMD8WLMtq6+XG1LMu/IidvlPTftWR6oXoz9E1lZP3P
	+3H9oV9xQnvn+Mm6TcX7+R3TRg==
X-Google-Smtp-Source: AGHT+IEIZmtjcTZ+O85xVNa4IVNhsReGQ3DF8rpsMg+/jv/LM+ftJu6i1P+NxQqqxl+iM1qYBz1zQQ==
X-Received: by 2002:a17:90a:db92:b0:27d:d9c2:6ee5 with SMTP id h18-20020a17090adb9200b0027dd9c26ee5mr4790020pjv.9.1698488588731;
        Sat, 28 Oct 2023 03:23:08 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90b:1647:b0:277:5642:ec00 with SMTP id
 il7-20020a17090b164700b002775642ec00ls737814pjb.2.-pod-prod-06-us; Sat, 28
 Oct 2023 03:23:07 -0700 (PDT)
X-Received: by 2002:a17:90a:ca13:b0:27f:fce3:2266 with SMTP id x19-20020a17090aca1300b0027ffce32266mr4543326pjt.24.1698488587406;
        Sat, 28 Oct 2023 03:23:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1698488587; cv=none;
        d=google.com; s=arc-20160816;
        b=Qc9Ry+D54gKVRm/TiTThQwGh1sUXKpGtetsYPpQWKDRIJ3TfNRCIEJalRcaPlPYTNZ
         Ok68ZPPEfBF4VVQg9MaSIEijoh3BlAjv6yGpCjtpH16lecILY4IxhOGfimS6WPn9AMFT
         MltCqzioR0TefUZ8h2QCZhtF965ZKvxyEJOMVZYkHu+gY1LPJJocXGJKhqYj2oxbmO7f
         bAxgDGKn4FdikXCGFfwOyb+ODi/mEnWbBMYGcX5jIGFgHk83Z+z39kfyBfcamHoom4Ke
         YB0WjlPRjeGBhvkgOfwbdKPPz/4LtFZo03CUWcQ3+UAqAQoPU9qGMAoND4jkVZFWiaCc
         a3Ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=F0dZiynX+PiZJQMovTOHnrs+y9nb7KZJzVcjVECigyU=;
        fh=XY/oKcch/eMwojFg3NEzNI3dYvMwhtFDBHi83HM+kqY=;
        b=GymgMro2MkTVRIdeku1FSkg2+cvT4VCOIpVbcjOXbuwkbrD/koB1BlPDrSUiZIptXy
         ozvWakQWW6Hcn91jhQIVla9PiNQFoKGQIwjUxWnTMOvOf0zMCPZRpKZePW1VQpY1PWXC
         iVN4hVxPOWOPb75y4tUmW449i1v++TxK3994ijRe2qPpB37pjKw4w8OoFBb00DOztjDf
         kZI+/CEnQ2KuqBCVuULroga2gqYS8bfh3Z4yruchs5CYwlyXHOqZOltUVw3IlRfMz5cX
         CBUleivLxBEIeej0GvpbcjO5xy+HWSID6wBCgh/iFSjch4a2evzgPiUJFaP33kmBA2PF
         lv3g==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b="X/iIJVX7";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from sin.source.kernel.org (sin.source.kernel.org. [145.40.73.55])
        by mx.google.com with ESMTPS id d10-20020a17090a628a00b0026b49c1aa50si4181422pjj.111.2023.10.28.03.23.07
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Oct 2023 03:23:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.73.55 as permitted sender) client-ip=145.40.73.55;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id C8330CE2154;
	Sat, 28 Oct 2023 10:23:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 36144C433C7;
	Sat, 28 Oct 2023 10:23:04 +0000 (UTC)
Date: Sat, 28 Oct 2023 12:23:01 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Bagas Sanjaya <bagasdotme@gmail.com>
Cc: LihaSika <lihasika@gmail.com>, Linux USB <linux-usb@vger.kernel.org>,
	Linux USB Storage <usb-storage@lists.one-eyed-alien.net>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Alan Stern <stern@rowland.harvard.edu>,
	Milan Svoboda <milan.svoboda@centrum.cz>,
	Matthieu Castet <castet.matthieu@free.fr>
Subject: [usb-storage] Re: [PATCH] usb: storage: set 1.50 as the lower
 bcdDevice for older "Super Top" compatibility
Message-ID: <2023102848-esteemed-reptile-851f@gregkh>
References: <ZTsR-RhhjxSpqrsz@debian.me>
 <055de764-c422-4c22-a79b-dd4db56122ce@gmail.com>
 <2023102704-stable-lid-c86a@gregkh>
 <7484f7c8-a49c-4111-83f0-bb6db2906fae@gmail.com>
 <2023102729-spent-ninja-7e39@gregkh>
 <037e5af2-3afd-4a37-a4d7-6dc87af605c7@gmail.com>
 <21c2b8ee-7753-413e-98f9-d1401edf5c73@gmail.com>
 <2023102720-emotion-overlying-9bb4@gregkh>
 <ccf7d12a-8362-4916-b3e0-f4150f54affd@gmail.com>
 <ZTyyDXYR4f6WKdLM@debian.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <ZTyyDXYR4f6WKdLM@debian.me>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b="X/iIJVX7";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates
 145.40.73.55 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
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

On Sat, Oct 28, 2023 at 02:02:37PM +0700, Bagas Sanjaya wrote:
> On Fri, Oct 27, 2023 at 08:28:04PM +0300, LihaSika wrote:
> > Change lower bcdDevice value for "Super Top USB 2.0  SATA BRIDGE" to match
> > 1.50. I have such an older device with bcdDevice=1.50 and it will not work
> > otherwise.
> 
> What about below description?
> 
> ```
> Some old USB hard drives using Super Top USB 2.0 SATA bridge have lower
> minimum bcdDevice value than currently allowed (1.60). Such devices
> cannot be used by ums-cypress driver since their bcdDevice is out of range.
> 
> Lower minimum bcdDevice to fix that. 
> ```
> 
> > 
> > Cc: stable@vger.kernel.org
> > Signed-off-by: Liha Sikanen <lihasika@gmail.com>
> 
> Is your intended author name in your From: header or Signed-off-by: trailer?
> 
> Also, don't forget to add Fixes: tag; that is:
> 
> Fixes: a9c143c82608 ("usb-storage: restrict bcdDevice range for Super Top in Cypress ATACB")
> 
> When above reviews are addressed, resend as v2. Make sure that the patch
> subject begins with `[PATCH v2]`.

There's no need, I can take this as-is, thanks.

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/2023102848-esteemed-reptile-851f%40gregkh.
