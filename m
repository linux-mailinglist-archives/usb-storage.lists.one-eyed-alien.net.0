Return-Path: <usb-storage+bncBCUJ7YGL3QFBBYM3325QMGQEIAJGYKQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oi1-x247.google.com (mail-oi1-x247.google.com [IPv6:2607:f8b0:4864:20::247])
	by mail.lfdr.de (Postfix) with ESMTPS id 1632CA004D1
	for <lists+usb-storage@lfdr.de>; Fri,  3 Jan 2025 08:12:35 +0100 (CET)
Received: by mail-oi1-x247.google.com with SMTP id 5614622812f47-3eb8b484becsf7679459b6e.0
        for <lists+usb-storage@lfdr.de>; Thu, 02 Jan 2025 23:12:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1735888354; cv=pass;
        d=google.com; s=arc-20240605;
        b=H3tRuPddEJ8q3EcDM3bp4+73pZnHmHqJSKDzDhv9gdve7K9xB/6oyY0Za9pD0SMIpk
         G1jWF2Hj+pTclE7MCL/JEvDn2H1k7JvfUVGSs02MZPBn5VPj1zIAx+TQYClrSmxsSMDz
         zyaYA1mknGq8SN44ZFCdPb7I9jvnUlfCRPnwk67DGbafNkPsxUtCyiye3HY1UpTrK3Vi
         hfDLZTY5oXMYw4V7DlWoxcHnVQmYR/0ehKI5JsTZWY9wDHrjxxi1uQDUmxdd/RkRLUHR
         QpJVPdglvmKQkVh7Xs/LzuP6cvjPBZS1sEuB5RPUK7pFAkKtOQQ3BPgimC8GeRI49Utw
         ValQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=KhWVvbkJ66w02BpbqwzHFG4w9Z4vdU2gGvRewKWk4Nw=;
        fh=z/eZwSgeAbJBJQV7OnfCAOWM5/xmepkF+f7HckMSGyI=;
        b=Ghpw2lw+Ud4N/SZuwldurGytq0BurYhT6AA9FCcpLj73+D1rIW0hOSLfSE0579MXqZ
         KIeQ5i3r6hUCVuOEZWyYXoe+SprJ+Xzt/gXcOXLoftbYm1aFrcdE6Va7TjA/S+Infiop
         H/9IuXL2YWhBLSeLPIjgFL4DCQvdlTcPXleBrnDHR0+ojYxoMmWB1DGgX7SkuiWBOvH5
         b2/kkhpH2DfpefQPUu2BdTU1233a1ZI5lr4cRZEjI/OKBbmYGqfLWJKYdnNQC9ogbvhG
         jhD67Ybadttc/5JJMC21JJwLatdUz8GPao20gQdP7q6hiQcsq/zQW/Row/y19bOa4a84
         dnIA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=de1imjf4;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1735888354; x=1736493154; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KhWVvbkJ66w02BpbqwzHFG4w9Z4vdU2gGvRewKWk4Nw=;
        b=NWYIns7GVxjXaTxHrDkoPlsd4iuv0Upc39kn+VZk1hns9OHCfANCplBRqad9pXBxMm
         DbE9bq7luLfkpyWCbP1h79e6gwuiYRLAiTYrvQUUJPK0hPSG3WlfPHH2z3vDj2UpaqPv
         jQIKGLpLt3Q2jH8aNw2siXIPVgPwDExSL6Fd0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735888354; x=1736493154;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KhWVvbkJ66w02BpbqwzHFG4w9Z4vdU2gGvRewKWk4Nw=;
        b=WGMo3S03RWAI9NbF41q0X2uhHkqqyqJGJ++Icd56QpsVcuyhfDn7h029EJo5Qwdn9H
         Pk6hNIwukCXWmqNPrS5xBFgZRVwvK1adJAsGZyXeagAWazDuCE1ypaugNDWf7zLLY71B
         Ru5sUAywgtimH9YwG2GvapcWdoqzQUvFqmLHrCQNjdQorQZtwm6TiwZDXrtJUOiLaLtC
         /j5NL+DL4Nng7ajJCsBEigd+i2IXXye6HHDai72NLUPzcDThdqtsCIpTW2RyghP8PmGx
         qAL/qD9/1xozfEZZCbLcqTzpw3g2rCA1BZ31RZavfky3JUY0Qi0Sz2/8xcW0v0wSpEgu
         v1Qw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXRIKWbsr39P2GANaRAMRH8uKtEEbHSqDxF0PKde7j1tENIopsjHcF8iwUOk8QGV49Rq3cHdQ==@lfdr.de
X-Gm-Message-State: AOJu0Yzn6vYvoLuPbQfK6193v/h3Gs0516w4s4PzT/Xr1G06/jZfAF6X
	Yu2sMxtN2YQP0AAYw/tTgifWgp7IOi8AtXUrSkfI9Hhs60nvGwhmoINfxTKtdcE=
X-Google-Smtp-Source: AGHT+IGIJYabUkqtDrnHwj3yP4vN72sNIi9d+mTZsOyDyImYtRMITgDFqHSMlSGJpF/tyGjS5cHHPA==
X-Received: by 2002:a05:6808:2229:b0:3ea:4e7c:a924 with SMTP id 5614622812f47-3ed890a95b2mr21245000b6e.34.1735888353326;
        Thu, 02 Jan 2025 23:12:33 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a4a:ea90:0:b0:5eb:55c6:2ada with SMTP id 006d021491bc7-5f4d7dfb190ls2907133eaf.0.-pod-prod-07-us;
 Thu, 02 Jan 2025 23:12:32 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVaG2b83qtRJzzuwboEC2Qkp0xbjch5seB+kk0jsW+iCq6vbq8+K1iZkwbunF22UjQiMt83/0uQDAMsNA==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6830:25c4:b0:71e:51c:a4f5 with SMTP id 46e09a7af769-720ff6c985amr27783033a34.11.1735888352441;
        Thu, 02 Jan 2025 23:12:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1735888352; cv=none;
        d=google.com; s=arc-20240605;
        b=g9WNpRACKl738znvs1PfBHDEq0WF0T8WcDB2qfsUdGnqvgPniGa11Qg8O5ZYw1kbRV
         yPFs9zQa750zwljJUvl6uHg99juAdYVG6QpncGhfM8PaVv+dLF+i0nnuof/saAVaZci3
         Gtx8wyMizb8iRCOj1+fSK2pIY9gg63YG9cVn03CR9k9pF91nYgQz6YNtSyLqNKEMgau/
         WggqC1Dcwq0J1bNz2HdjdxHCBY4LiQgQwJfwcNc1OGxCRKhQMH1TuztMUq6m/d/OBRtZ
         2E0ey9LQBV8v4Yx/xLgTj2mk8kSg9vjAM9F/qUnZhZJ9Pv3PBwZ+L/3Kg1f+6HNd3vh8
         /W3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=LQy+CVVnLoCZz66UNk3SydbXbEUxBh6kCI/5mjcYVcI=;
        fh=FdaLDWERN/aMIDJF3+K2VXAjta0fZ2gqbuqQA5tGtvc=;
        b=j4p/RqdLX93FH1MjmSK9rxhF0DJeYIxkHcVaNLbEkkVpE+CLiWRqKnOTwdo3GV9etp
         Qi0jQtIY2IYN42dMAOhvoYJpEhOsnK1xPkO+8Ht1DDkAcIqU93ftSAEGkLeBK5hItBI1
         oZ/RjCNRBM/xllVYSPCk6AGi1lfhuY8JRX3/qpZYHE4usXnbCzfRtRbXXzVgvKCG2Uxt
         Uj4WoJd8Cv1Wk2QCTBDJnwxqL8oHnxbixboTGp7hmmsFfGsTWfuxm7/ETKDHfsM6mXqj
         8BBlByCBzAo19oH9vbL5k/zaZEy+hC5K9aHyLBY1b8a4CFtFBN7pNZinLjD6pwBoofaw
         vYqg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=de1imjf4;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by mx.google.com with ESMTPS id 46e09a7af769-71fc99dde96si17691274a34.189.2025.01.02.23.12.32
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jan 2025 23:12:32 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id CB1145C5D74;
	Fri,  3 Jan 2025 07:11:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 76027C4CECE;
	Fri,  3 Jan 2025 07:12:31 +0000 (UTC)
Date: Fri, 3 Jan 2025 08:12:28 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Alan Stern <stern@rowland.harvard.edu>
Cc: Lubomir Rintel <lrintel@redhat.com>,
	usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org,
	Lubomir Rintel <lkundrak@v3.sk>, stable@vger.kernel.org
Subject: [usb-storage] Re: [PATCH] usb-storage: Add max sectors quirk for
 Nokia 208
Message-ID: <2025010302-entering-paltry-bac5@gregkh>
References: <20250101212206.2386207-1-lkundrak@v3.sk>
 <729d6c93-a794-4102-a191-494bf86df219@rowland.harvard.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <729d6c93-a794-4102-a191-494bf86df219@rowland.harvard.edu>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=de1imjf4;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates
 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
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

On Thu, Jan 02, 2025 at 11:22:00AM -0500, Alan Stern wrote:
> On Wed, Jan 01, 2025 at 10:22:06PM +0100, Lubomir Rintel wrote:
> > This fixes data corruption when accessing the internal SD card in mass
> > storage mode.
> > 
> > I am actually not too sure why. I didn't figure a straightforward way to
> > reproduce the issue, but i seem to get garbage when issuing a lot (over 50)
> > of large reads (over 120 sectors) are done in a quick succession. That is,
> > time seems to matter here -- larger reads are fine if they are done with
> > some delay between them.
> > 
> > But I'm not great at understanding this sort of things, so I'll assume
> > the issue other, smarter, folks were seeing with similar phones is the
> > same problem and I'll just put my quirk next to theirs.
> > 
> > The "Software details" screen on the phone is as follows:
> > 
> >   V 04.06
> >   07-08-13
> >   RM-849
> >   (c) Nokia
> > 
> > TL;DR version of the device descriptor:
> > 
> >   idVendor           0x0421 Nokia Mobile Phones
> >   idProduct          0x06c2
> >   bcdDevice            4.06
> >   iManufacturer           1 Nokia
> >   iProduct                2 Nokia 208
> > 
> > The patch assumes older firmwares are broken too (I'm unable to test, but
> > no biggie if they aren't I guess), and I have no idea if newer firmware
> > exists.
> > 
> > Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
> > Cc: <stable@vger.kernel.org>
> > ---
> 
> Hmmm, maybe we should automatically set this flag for all Nokia devices.  
> In any case,
> 
> Acked-by: Alan Stern <stern@rowland.harvard.edu>
> 
> However, Greg's patch bot is going to ask why you didn't include a 
> Fixes: tag.

No need for a Fixes: tag for a new quirk, what is odd is that this
didn't go through the linux-usb mailing list :(

I'll queue it up soon.

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/2025010302-entering-paltry-bac5%40gregkh.
