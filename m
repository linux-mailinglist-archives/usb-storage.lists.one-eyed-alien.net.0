Return-Path: <usb-storage+bncBCUJ7YGL3QFBBJFLR6YAMGQEJAS4IMA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ot1-x348.google.com (mail-ot1-x348.google.com [IPv6:2607:f8b0:4864:20::348])
	by mail.lfdr.de (Postfix) with ESMTPS id 52C0888D88B
	for <lists+usb-storage@lfdr.de>; Wed, 27 Mar 2024 09:15:34 +0100 (CET)
Received: by mail-ot1-x348.google.com with SMTP id 46e09a7af769-6e67fa991f1sf6617368a34.2
        for <lists+usb-storage@lfdr.de>; Wed, 27 Mar 2024 01:15:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711527333; cv=pass;
        d=google.com; s=arc-20160816;
        b=j+lJyi0QtTYnRLwerSb/8CstzKU2VJG6EmwJW3mEMZzN//CgllbDdciIGl527Y+w77
         jfTZODMVPCqyLr3m4UnDsrc+au1t1Q617+g8WRD3EiWJPDIIjY7AzCEOaJy5n8W+ZX7u
         /WMnG6XrUhmsMLx3ZDjfv/bKkKX4tyHFHx2y2qz3V3/g6k5BReLgYXDX906NtHHhTlF3
         Ed6hxc0H6ga0POn9lfrTkH1lZ0Gux0UeUSGBrEClZk737PeuG5GAt+FgigebEi/8gkjT
         Jjz8db062I3p/Ekh8tl5WQo83gHye0gTPHpBknkg+CzRJxatNKvsPcFx+tXn/fMw1+aH
         x58g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=kdByqUWRokKZIO3/mdK5ncNBwsYfIAUPiZ8Suld0eFg=;
        fh=z4uyfQJQMI082EstY8m/31DnTBJAjGineKbNUths1IA=;
        b=DxOIf3H6ybk6QpQEJVbkGeTBQQSR+UcTnIrWiHLYbQ+J/DWL7xd81AvXgA0Iixfsdc
         +mH/7d01V+n2kPUgaxauj5++F9GG6d/+x2JNBl7FBc6rTUJNPgKSNn3y9J91Gs5QgQPP
         HatBZCjpn4Obw5wj8jzStsuYAC4Qx2rl2+N8wLRIoPI1dZ+IBYjvFgZW1YTHcqmHYVDm
         YArTMYcFHGMynjzNvicq4juFYbGncfL7Hn46Be9k72mgZkLjn4quxcc4mgYvw4lRE4D5
         A9R3hmTZ3cmzEsCoddodWqMBEvBkiEaHX9qlsytVtTd0M8SgElF+zTU6LQ6SWfIAUsV6
         yk1w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=uFSGxBkF;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711527333; x=1712132133; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kdByqUWRokKZIO3/mdK5ncNBwsYfIAUPiZ8Suld0eFg=;
        b=Fx69gPMmB6nqKfTLvtQisetL7cU5dDEjrzdq8rGP6zsPygslgHth/Yrqgijrfr9gjL
         bAclMyRKZeHp0ZEgLsVkFgtr0uFOBPgwhL5mpN5+pWl4MGbCVkrny2QjHYMMtJqz5f5b
         +1WAq+jPH2k9ncTtSly7Y1m1djm1TDyLiuO68=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711527333; x=1712132133;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kdByqUWRokKZIO3/mdK5ncNBwsYfIAUPiZ8Suld0eFg=;
        b=givH+pKg2svdqe+poV3Q6g1Dsb3wmZWCGs1F2TrZPuQD6yeE9D9csWFc7Z9zRXvHq6
         depdIVI6D42AV+7CbE9EvliWmSu5IVlUEG6fpA5G4qQFiLYZk1OsM7tDftWUPPemGEB8
         7yOV5TPRwmB9IJjA4F3+OsRlWERy7wNpak5O6jWC8JSv6GuJoEEc6Bj3OB6iysBoEns7
         CV5tFZRqqGFNbQ6rRNqtyXoKmTsYRJMKmaHs75c7QRVL2xEiSRWlwUqSqCK9BoLUTL2y
         1PUN6PZrb+AZu+eDFM2EEJG/T0QTv8kkMctp0R7uI9kp0zYsV+fY7slUFPzJCAJySZtx
         92Uw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXNtxYCxvWynLpuL62t/n/wjTUWyHcJ/CN2maMkAr0NDLCXOrwIYg8RLpfeVSoApVEIegbqslCYT7bSAxlodMLulrd8GrSh8h5w
X-Gm-Message-State: AOJu0YweW+it7khjHly722UfJvoTudM2CuGQZlsXHoWIcCU9BJR19Uzp
	M82mOjJguAipJaYBrvElzNoLqb2/QhPp3mr5Xb5RdcrescjrPoQXj3VaCrUB6xY=
X-Google-Smtp-Source: AGHT+IGMsQ3S7qvMPTTndBlr/0Y0/YixQxd7idowB6SSGbf+I+v+0my/hhGkcRbas9DFz/nDT8KHJA==
X-Received: by 2002:a05:6870:a2cd:b0:229:8236:ae9 with SMTP id w13-20020a056870a2cd00b0022982360ae9mr408730oak.59.1711527332695;
        Wed, 27 Mar 2024 01:15:32 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6871:5b06:b0:229:c291:bff5 with SMTP id
 op6-20020a0568715b0600b00229c291bff5ls2879136oac.0.-pod-prod-08-us; Wed, 27
 Mar 2024 01:15:32 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXnP/GzRqbUIYgQhRGKJjhRkOTqiesWZNNePtmZZ4iv33L7rotD7k1AsaO81z2VLksJ86gO4tMJMUoZsYCRiV7lbDPZTBqUEueelOaY93EDHpPoZn4=
X-Received: by 2002:a05:6871:5a06:b0:22a:508a:66e4 with SMTP id on6-20020a0568715a0600b0022a508a66e4mr515831oac.12.1711527331904;
        Wed, 27 Mar 2024 01:15:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711527331; cv=none;
        d=google.com; s=arc-20160816;
        b=t/Q/fIFnaiXSy0Qz4hdhIAKpOy58wW9V96mu10g73epuXahzpOSO9znhoI1EZQSV+D
         lQXvsNnv4VUMMqLcz2yJoTYKG3z34vBGWo8smsJHiZXkbRuV2e3V56tjtpP7eqLUJzhY
         ZQ4ExKDRdDVbjEY6YOj3FuG4DDDn3WO+1Mhe7vuffjEm0jTsN54B3FfZbPelbycGlQLU
         Bmx6YN1SRlVB69SiGMBh/llBHGg44wsyI1Mx1TSismSe0KMXDFuZYhd70lrB8zxZLwee
         wKIGli+yU9OC/U+woB+1AMpxHfl7KbGGmrO61lSdhykP6XdFvwF2EzTwwNPI4ZnC4Xkv
         aK0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=aRc8yhcE4e+6L7kQFczKku4VkOT1235zB5bAufGnmhM=;
        fh=orh2zKSd7Im9a0GkvoikBkBBeYkDgaqhARTitOWa4z0=;
        b=YPBeCRx6jcqLT/vLcRGWxrjAvQ+kLiPcf96RkheXmY4LxzECpybL1XLr78FyEerJJW
         9q1LBitC8wjgVjEC63j0DShU1wVQ/+EbwVLa2EAytM6s0uugNZDyQ7PXMtxSeY9K4jGm
         ZXs2KNam22abxtZzu5LlDrVVtMj1p4vzf5UGzuLfikLT+MpgKzzfVIRJ1wajHtQ7f6hW
         nKMD3MojsJEs5GEKKV0TMxT6BPgQX0VrtR7NG1Sqs512L5liTaZOqkBBDe8RHwrHzbNj
         34Zpd+eBmbFm1DLZsHkyyxDM5DiVQc8YECM8r3NF8COEj2wB5Hx9OGR0k7zLv4ybuGDA
         NnyA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=uFSGxBkF;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by mx.google.com with ESMTPS id lq5-20020a0568708dc500b00221e8ea2305si2928473oab.178.2024.03.27.01.15.31
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Mar 2024 01:15:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 9BF34614E8;
	Wed, 27 Mar 2024 08:15:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F2025C433C7;
	Wed, 27 Mar 2024 08:15:30 +0000 (UTC)
Date: Wed, 27 Mar 2024 09:15:28 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Norihiko Hama <norihiko.hama@alpsalpine.com>
Cc: "stern@rowland.harvard.edu" <stern@rowland.harvard.edu>,
	"linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
	"usb-storage@lists.one-eyed-alien.net" <usb-storage@lists.one-eyed-alien.net>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: [usb-storage] Re: [PATCH] usb-storage: Optimize scan delay more precisely
Message-ID: <2024032750-violator-trivial-90a3@gregkh>
References: <20240327055130.43206-1-Norihiko.Hama@alpsalpine.com>
 <2024032757-surcharge-grime-d3dd@gregkh>
 <TYVPR01MB107814D7A583CB986884AD4B290342@TYVPR01MB10781.jpnprd01.prod.outlook.com>
 <2024032745-transfer-dazzler-2e15@gregkh>
 <TYVPR01MB10781723CBD338DC3EEB5F20590342@TYVPR01MB10781.jpnprd01.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <TYVPR01MB10781723CBD338DC3EEB5F20590342@TYVPR01MB10781.jpnprd01.prod.outlook.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=uFSGxBkF;       spf=pass
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

On Wed, Mar 27, 2024 at 07:57:52AM +0000, Norihiko Hama wrote:
> On Wed, Mar 27, 2024 at 07:39:55AM +0000, Norihiko Hama wrote:
> > > > Sorry, but module parameters are from the 1990's, we will not go back to that if at all possible as it's not easy to maintain and will not work properly for multiple devices.
> > > >
> > > > I can understand wanting something between 1 and 0 seconds, but adding yet-another-option isn't probably the best way, sorry.
> > > 1 second does not meet with performance requirement.
> >
> > Who is requiring such a performance requirement?  The USB specification?
> > Or something else?
> This is our customer requirement.

If it is impossible to do, why are they making you do it?  :)

> > > I have no good idea except module parameter so that we can maintain backward compatibility but be configurable out of module.
> > > Do you have any other better solution?
> > How long do you exactly need to wait?  Why not figure out how long the device takes and if it fails, slowly back off until the full time delay happens and then you can abort?
> It's IOP issue and difficult to figure out because it depends on device itself.

Agreed.

> I know we have multiple devices with delay_use=0, but then it's recovered and detected by reset after 30s timeout, that is too long than 1 sec.

So how do you know that making this smaller will help?  There are many
many odd and broken devices out there that take a long time to spin up
before they are able to be accessed.  That's what that option is there
for, if you "know" you don't need to wait, you don't have to wait.
Otherwise you HAVE to wait as you do not know how long things take.

sorry,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/2024032750-violator-trivial-90a3%40gregkh.
