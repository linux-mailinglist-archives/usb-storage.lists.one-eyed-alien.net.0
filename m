Return-Path: <usb-storage+bncBD6LRVPZ6YGRBWWK4SUQMGQEDK3OODI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf45.google.com (mail-qv1-xf45.google.com [IPv6:2607:f8b0:4864:20::f45])
	by mail.lfdr.de (Postfix) with ESMTPS id 03B6D7D6EA0
	for <lists+usb-storage@lfdr.de>; Wed, 25 Oct 2023 16:25:32 +0200 (CEST)
Received: by mail-qv1-xf45.google.com with SMTP id 6a1803df08f44-66d040c58eesf78133286d6.3
        for <lists+usb-storage@lfdr.de>; Wed, 25 Oct 2023 07:25:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1698243930; cv=pass;
        d=google.com; s=arc-20160816;
        b=DBQy73Si4r+7+wkK4ZoSkkjRub5SZ7qdkFs6dYTsnIypfuzwKT9R1z95oRivNOrA6s
         G/HvZOUZZ0CPynCDy1ugTjxerESQ+jmnmKZGpzIR0eEVk2a0CLFRbT2k3Kem2jaFeBQR
         M3oCDSr+Pfd9Gt0HSWIoWP4ipNLBhz5AGONUTnctIkPsrzxvU5k68VDJOV9gdc7GGqXs
         OngNUGD0qGMayFgDjKAIBjDHIyPzxlbCROfCeA2EoIcBBaxAHIE7QGoFDbM/rE5do74i
         +Vnz3OuzIGf3JAvlkKOmqubSziWXxO4AEIgJ9iK3T0jeCIZkS7HfBlDV179lM3UW4rOF
         pf9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=iDMDVoxvuoH0WVVIp/tDiOzCJLzrnxY234kVkgdVCPM=;
        fh=HTcH9FwWfokSIxcREMnaC56gnwz2mltpvLaBMofE/C4=;
        b=iAE4qbFeKX4bcE3FVfyd2fSTc16l46YI3Z1yZyiLmjoiOLnCeGig4eepYB2jkjDu16
         Vf97Rml+ZTX+tdqHC1dD8X5wVJN/BZP84oZqQREai5ea0URzO+hD3vtiJxvAacHu4nZC
         O72c0/LRWHT5W6ezJWmlPXna8wG7HNK6e0ovTuUSID2evkTThn6BYyyD0kABTbOobchr
         DkYueQX9sR37iYqzYT9VVXWHNAv3D/euejJhabnKKcC6/mhGRBUabZXrelG7tQCy0hBL
         Kk6E4x5mzb7sU/+tMaK7TKGLrd6dXZB/aFrRnhQp6KAY9llS9gSgwvStUunJykZjuwk4
         1yZg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+652539ca@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+652539ca@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1698243930; x=1698848730; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iDMDVoxvuoH0WVVIp/tDiOzCJLzrnxY234kVkgdVCPM=;
        b=AXh5EqkHDCtd7/WuzxeFA/NTv0CsjLryuuNFmXiqryXHMjo3lbzWwTWXBkGaigLCrO
         s+On6HwjqXgIDc0WFNzsDuq/TXWEgdygjxDUYpuvYcuszzIgg7U6UeFCl6u2nltaP9bS
         6spaK+Bz5d3ukErPhGriLHF4jSZRx79THpLNw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698243930; x=1698848730;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iDMDVoxvuoH0WVVIp/tDiOzCJLzrnxY234kVkgdVCPM=;
        b=cBuIKDMAYUHwC0y6YNFnxJCCyAUtat/fe9TKc3guYJZlvturaNTqv8pDd9VNj3vTLD
         tpsedfvi6sN/vKE7ZcUmxHkEAAeRnD5LKd3veoFk5KyZBViBOo7vnpAIENimhgTIUWf2
         swuCqP1kANwSbMrE1v0IvyBX9wTbWEyv7QG5NUD0cDRonaYUzsq7Xo3lLzv1y7vgdebL
         DeXasjru5UwQpgBvjHRCR8YlPFegnLbsvz1GZ9eR2vXYiS/lLjiVX+WQ/djZTw+nGLqw
         dZXlIKRcM5TFmPDtZCo967Q6B40XdIRjDwLBuTEMWHEmW1ptS9t2yYN/msqin7I1F2ix
         d1Xw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0Yy1+uLZ1SIUgZgh6b9sYeRKaOMZW7Qt9NMkIX50k+DTta4ChJnX
	4HkHraXAUTCywTtxg1WmXTJz4A==
X-Google-Smtp-Source: AGHT+IHwucye3X/sKCzu+Jh7npOLfwhKvTOOQAbLHorTaErvdzeL1zZkdP6b1rcPtHevC1iVL/X6Lg==
X-Received: by 2002:ad4:5c65:0:b0:65a:e466:1678 with SMTP id i5-20020ad45c65000000b0065ae4661678mr17212716qvh.55.1698243930648;
        Wed, 25 Oct 2023 07:25:30 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a0c:e60a:0:b0:66d:869b:3a7c with SMTP id z10-20020a0ce60a000000b0066d869b3a7cls2639163qvm.1.-pod-prod-05-us;
 Wed, 25 Oct 2023 07:25:29 -0700 (PDT)
X-Received: by 2002:a05:6214:5006:b0:66d:1b61:f206 with SMTP id jo6-20020a056214500600b0066d1b61f206mr20066289qvb.59.1698243929427;
        Wed, 25 Oct 2023 07:25:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1698243929; cv=none;
        d=google.com; s=arc-20160816;
        b=WlKUrIwvN6KzrKBy2gum8x2wza4kCO1Lgbrhs1jdpk0cuTeuTm6hFU7epdprwgxQNu
         7pXfxHyeJ0SvXDS0OPRfUxknSA3IVFKrOTiYvz6InaVNXdOpMsGptddYN8Kt52svtmjs
         AVHDxTEHdQjBW9iDUG9zXKkx4dnRLr624sVFS6+A9NnAwD1uFj7ERkNsovHKpcw5TLKf
         7qMmTj2r5rGOcsZ/RszgdIYRH6quHrn7LukGP/0F1WhrsOtFcgRFZ9MQAYM0hWh/YOaJ
         q+XKVEDe/WKwboGSar0SFvVWNZEKm59YbL6I+BYSsjurL4zg9KHUXZ5JrZ158Yfy5O1v
         bmEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=eMGX5Z6Wb5FCBxvcVbzY1MCs8mEW8TMZB6RxH0+0Clg=;
        fh=HTcH9FwWfokSIxcREMnaC56gnwz2mltpvLaBMofE/C4=;
        b=yQe8S55cMdBtvIFhXSkcHbpRDAqn3Fylop657xRUuDB7bjyAWgrdSaG6bwSVCSI80r
         C0kSO2av7ydr60R1vlT3jKyjwc00LyBBxR1ZUqqFda70I+G7aXnbEG790y8m2+Wf/oqU
         DaqawFLsRroMallspCF66d/6PMPSZXBodZ5rMXhm3XjNdWYg/hJS+082e9Y4PPDw6Xl6
         be2OIdJWDWP3QNDrmabHCzmJb6kpoRPvJnUTsTGN+DQl+dGb+bt1wxFeiqFnK/v90Ju1
         QS0TX9EAPxlDCI9nrGAtAMiS821a1ufP8H5lbNxJMKdZMZ5BOw5IChE/UhCLXswGisTu
         +ZkA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+652539ca@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+652539ca@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id bk40-20020a05620a1a2800b00767cc0f9316si8724967qkb.289.2023.10.25.07.25.29
        for <usb-storage@lists.one-eyed-alien.net>;
        Wed, 25 Oct 2023 07:25:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+652539ca@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 495360 invoked by uid 1000); 25 Oct 2023 10:25:28 -0400
Date: Wed, 25 Oct 2023 10:25:28 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: "Li, Meng" <Meng.Li@windriver.com>
Cc: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
  "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
  "usb-storage@lists.one-eyed-alien.net" <usb-storage@lists.one-eyed-alien.net>,
  "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: [usb-storage] Re: [PATCH] usb: storage: add shutdown function for usb
 storage driver
Message-ID: <f6dec17d-471c-4bec-b730-1a4bbfbf21e7@rowland.harvard.edu>
References: <20231023054111.2744872-1-Meng.Li@windriver.com>
 <33bd0779-bfe7-4c87-8fe6-ea8455df3b6b@rowland.harvard.edu>
 <PH0PR11MB51918DD50651DB6BE937BEA3F1DFA@PH0PR11MB5191.namprd11.prod.outlook.com>
 <3fe5b43c-a5aa-4c6a-8614-03a4d9dd53e2@rowland.harvard.edu>
 <2023102428-zit-quickness-9b73@gregkh>
 <5107f6ca-e972-4af1-a21d-6c95778969f3@rowland.harvard.edu>
 <2023102459-protector-frequency-1033@gregkh>
 <a6bb88cd-0b89-4eb1-b90d-8ad633b7a8f2@rowland.harvard.edu>
 <CO1PR11MB5188998FE62B30C3CA83A6F8F1DEA@CO1PR11MB5188.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CO1PR11MB5188998FE62B30C3CA83A6F8F1DEA@CO1PR11MB5188.namprd11.prod.outlook.com>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+652539ca@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+652539ca@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
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

On Wed, Oct 25, 2023 at 02:25:17AM +0000, Li, Meng wrote:
> In fact, the reported error is not critical one. In my real work environment, there is not the error because there is not PCIe-TO-USB card installed on board.
> The issue is reported to me from our tester who used the PCIe-TO-USB card to test the PCIe feature, not test USB feature.
> I am ok to NAK this patch. The primary intention of sending this patch is to raise up the discussion about whether shutdown function should be added for usb mass storage driver, and I have got what I want.

All right, then we will consider the issue closed.  Thanks.

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/f6dec17d-471c-4bec-b730-1a4bbfbf21e7%40rowland.harvard.edu.
