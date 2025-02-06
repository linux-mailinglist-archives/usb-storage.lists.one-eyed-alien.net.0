Return-Path: <usb-storage+bncBD64ZMV5YYBRBD44SO6QMGQEG5MVV6Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x748.google.com (mail-qk1-x748.google.com [IPv6:2607:f8b0:4864:20::748])
	by mail.lfdr.de (Postfix) with ESMTPS id 74F32A2ABF6
	for <lists+usb-storage@lfdr.de>; Thu,  6 Feb 2025 15:58:25 +0100 (CET)
Received: by mail-qk1-x748.google.com with SMTP id af79cd13be357-7b704c982eesf14894285a.1
        for <lists+usb-storage@lfdr.de>; Thu, 06 Feb 2025 06:58:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1738853904; cv=pass;
        d=google.com; s=arc-20240605;
        b=KMw7wbl6ahueoDhRdhED2zDXvEkdLAWHM/oqaH1yCv3zc5ra8Jp4zSiZ+g9Xreo0xU
         j8Yp/h3o9BSu/EDtVcNIYqnTuWyzt7dSz5xSIlkvuvUmdQq4Nv2gmnw3NfCDqi2paEtT
         N63FbvAP0qgAyXiJueUBHZSRc2pNt9iQXOCnFyLLsKB0glknKDGty3fDfQ+IoTbh/yCP
         BLsBYekjn1fcIlIExgiPTLhj43AJlC8fp2i5ijHIFkbpsjfQCx9z8gDLr50ZLW72IORv
         W4WRgoWc6eNPlkbTwSyppcap5Nqy6czPWxSY1x2w12/02szj7Xy/sMjraYQYKQED6pSb
         PaXw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=G/p0/8Uzy+EYYWbCuDf7WUbVjO01ZkXgBq1BNa7uxbY=;
        fh=T+EJcZSnZVThUSA+xEVm5mbH7sDucPGvVozu0fAobdA=;
        b=BpqDZfZs/kCHNwKMr18x2mMSlOutPM8MqWLgiAj0KNeuxP1l9ErZjIOnCR8tE8OP2u
         JBbs85l524U8A03Qj0r2Ex0uBZ3JjUUOVBl41RxsRexvTdk7pnq9xZFwmdqLvAHMS6VW
         ScHN9P0HQXmMGFfKU7iuRszYaTtXoexVFFfbEhcTtPWOR/ojJJwE6WeJT0wyOk2DhV8T
         0vbNxuPfiq5CFNKYyI/vxhLTuJEEa+XWTRYZXwuWTF/VLjZz3ZUUr+9wqL6UOw/V1UI8
         LaADdMwiKKax8ZvulNiPSRhhwNuzykX6BwZzlIMP2LPaphAxaXni1ApyLEx9bVEROj2z
         WWZQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b=oR5NycTm;
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1738853904; x=1739458704; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=G/p0/8Uzy+EYYWbCuDf7WUbVjO01ZkXgBq1BNa7uxbY=;
        b=M/fg3zrpwKi3+Qa89poGB8KPqhNE1/M3hTOSiUTgSePaQ6NCh94DYgx77gMK+OE7Yo
         Ipl4TjHwB5JIGkbH+prGr+BLorWgFXIXFURt4tBZuAm+vZGh7rjIHDbSnzHDy40uumsP
         GFXjZiA89Gr5jDAyRnlHa590L86LKF8zJS0bk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738853904; x=1739458704;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=G/p0/8Uzy+EYYWbCuDf7WUbVjO01ZkXgBq1BNa7uxbY=;
        b=DoT72/2MAMRlSN10StXXLMJEg+0VdPr94ErTId7F6METiQ/PtmNRngwyM+jcEMvDWi
         JndJXf3b22rPLgrN5G7sh/+IfXhzfvToRpioCe5XBHvy/mCmIJRC0LtiUwQwhdTV5utt
         ViiECMjezP5egiIlZdbrlFLt6fFFu5UI52vzrv6MhkQ9YvoN0epFcPkwyoP07AAbA3Ih
         oCze4dZMOpEzSk+r6od1NjP5FQNDDp+pDo/m9S0vCiTVLXjzBFXd2TSmD7DrIVo/aHbT
         SINNojgAggZS4P2nm2yb6ptaEVK97EwPjXWHl6aHQwfgxSptNYzjh3cakwgtmxWjvnVm
         IP+w==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVmmAwDOhcwaWgIqx/pLCcjE8qKADH54AM7If1DGMPrBj5nT7T2b6wVTlpGioIA9M9LbXDo0g==@lfdr.de
X-Gm-Message-State: AOJu0YyxdZ/rIabh2Ra2Ei2bkTPySG+B6GliDzxD61mJP2XI3pLC+f5w
	EIJgnhqm4bVR1UxLGa4bfyUGPF/9NEYrBp0jnQumf87mdnpOKXNRsEeKZJI48pk=
X-Google-Smtp-Source: AGHT+IE2C6VsCrEgHncakfIs6mf8phhf4wW0TIJc2xxeWyGDF+xm6cDTO8IZFxTdESpinvZu0RbNXA==
X-Received: by 2002:ac8:7d8e:0:b0:467:6eee:1138 with SMTP id d75a77b69052e-47028185fc2mr33677081cf.6.1738853903510;
        Thu, 06 Feb 2025 06:58:23 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ad4:4f23:0:b0:6d9:9c5:3874 with SMTP id 6a1803df08f44-6e43937eb3fls11546756d6.0.-pod-prod-08-us;
 Thu, 06 Feb 2025 06:58:22 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCW4/8jbBCMTPtEvUw0xtmjhX4Jb0hqzrbrF2/2jhScnSUH+exF67eGVh1AhndrQhnxXPeg7xGPCgWmxPQ==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6214:230b:b0:6d8:b189:5419 with SMTP id 6a1803df08f44-6e42fb6b173mr116357196d6.8.1738853902208;
        Thu, 06 Feb 2025 06:58:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1738853902; cv=none;
        d=google.com; s=arc-20240605;
        b=AI0EU8JU5JULgedZwm5W6xMN88So6oDsqyY0/UQyGGL55m9aUSgDuRwv0GCctQ785Q
         awnvqfxFZ2f0V/gG37ZfWdUOpMNn2X5Qk0G2dqxCYM9KSGGdR6AYnKnoOqzecU09CoG7
         Oc0y1jhRlHgASJXqc4KUCiCZzUBRICsg1evhEjWvo+gNFBll4rnGv3sKqWbiUbEHaADy
         eZLOzV/87I1XP/1lSJUSNXCzo8Xye6NNE0i/u1ned4ollxqNb9i0WwWVbGA/WbFcXChM
         mhsnMPkzv5/61sS5PJCBiE40haTpB5IQSU2ps37BnFNNq3bA8Ib1r2MZBX6PWeIenSmD
         qcTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=XNiQI88qQ2M3rNYJ8bg9PlmEeiuvyHgd/qrJv6wRMYU=;
        fh=kOViysQTggxQRmllB4uswoau1m5QWk1lCv7ksv2QvcY=;
        b=Ps3DI1kLSwukvRb2Ep9Ty5CKVsJSoMNRFLtmL5K6XFWC0936efjLGwiKMG1jl8NN7A
         YxDTdL1dH8/DuvbblZHPSCt/z3xjvXNFV0Yewr6nkzs4+p/EzhUJ8nrcQwg5c0wNEBIz
         VeRL7Xg95bxS5dZ2A59ROG1utnDBjP2zlIjTmBjGgiL6o4UmNcvMaSglYe+p2NnfoXf8
         6sxjuh32KJE0+gNgFHJZCmjKvpcXzgU03Ann+2nKyp8+zYgCEnl08yrKrdEFs401JuIW
         YbmSPFiEKcOJ3wko+miF8Q55tcuDfckUhy07d1A68J1FUgO0MYw/1NdMM482nmoHdcIL
         BKew==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b=oR5NycTm;
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id 6a1803df08f44-6e43ba82cf7sor14508036d6.3.2025.02.06.06.58.22
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Thu, 06 Feb 2025 06:58:22 -0800 (PST)
Received-SPF: pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCVWKCzwMi5gkqev8IUjpX2Abu1OFW8TvA6bzJlwAxUdF/CR5p6hdj2KYhE5wrsF2ph9OTeq0y1fXCBm4Q==@lists.one-eyed-alien.net
X-Gm-Gg: ASbGnctJOrYxtjEax7EIVXBrYpEZ9wNkXnpSy3W/46sZgrNbKRkI0O7kt5rGqtmGZWp
	NlEGOFdH27hsM/hj1kuQOjWWRalL1JL7PuDVCxiDzliNhp0xd77HMd4bgPSkMDJfabnUXf+nB+m
	D98yO8aiOaHYYM0bn1S3U2p8AdioVoQFj6zBLv5Dc+ca3M1PB1hEVaHvM6oxwSiixoljwqLSA1d
	iu0r7zIMQ9DG8BXLPtlXIz7TpiC3wRq774r4ylJGoqtpGYVguBmSv5lSUfYcukyZPca0ktyIPbW
	yjKALdvFqunL+nus
X-Received: by 2002:a05:6214:2029:b0:6e4:41b3:4972 with SMTP id 6a1803df08f44-6e441b34e15mr10049126d6.43.1738853901763;
        Thu, 06 Feb 2025 06:58:21 -0800 (PST)
Received: from rowland.harvard.edu ([2601:19b:681:fd10::9345])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-47153bc75aesm5953631cf.64.2025.02.06.06.58.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Feb 2025 06:58:21 -0800 (PST)
Date: Thu, 6 Feb 2025 09:58:18 -0500
From: Alan Stern <stern@rowland.harvard.edu>
To: WangYuli <wangyuli@uniontech.com>
Cc: gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org,
	zhanjun@uniontech.com, guanwentao@uniontech.com,
	chenlinxuan@uniontech.com, Xinwei Zhou <zhouxinwei@uniontech.com>,
	Xu Rao <raoxu@uniontech.com>,
	Yujing Ming <mingyujing@uniontech.com>
Subject: [usb-storage] Re: [PATCH] usb-storage: Bypass certain SCSI commands
 on disks with "use_192_bytes_for_3f" attribute
Message-ID: <80ef917b-3680-4f85-93ba-c92d2b69ebaa@rowland.harvard.edu>
References: <AC1BB7F0327EFB9C+20250206054107.9085-1-wangyuli@uniontech.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <AC1BB7F0327EFB9C+20250206054107.9085-1-wangyuli@uniontech.com>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@rowland.harvard.edu header.s=google header.b=oR5NycTm;
       spf=pass (google.com: domain of stern@g.harvard.edu designates
 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
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

On Thu, Feb 06, 2025 at 01:41:07PM +0800, WangYuli wrote:
> On some external USB hard drives, mounting can fail if "lshw" is
> executed during the process.
> 
> This occurs because data sent to the device's output endpoint in
> certain abnormal scenarios does not receive a response, leading to
> a mount timeout.
> 
> [ Description of "use_192_bytes_for_3f" in the kernel code: ]
>   /*
>    * Many disks only accept MODE SENSE transfer lengths of
>    * 192 bytes (that's what Windows uses).
>    */
>    sdev->use_192_bytes_for_3f = 1;
> 
> The kernel's SCSI driver, when handling devices with this attribute,
> sends commands with a length of 192 bytes like this:
>   if (sdp->use_192_bytes_for_3f)
>   	res = sd_do_mode_sense(sdp, 0, 0x3F, buffer, 192, &data, NULL);
> 
> However, "lshw" disregards the "use_192_bytes_for_3f" attribute and
> transmits data with a length of 0xff bytes via ioctl, which can cause
> some hard drives to hang and become unusable.
> 
> To resolve this issue, prevent commands with a length of 0xff bytes
> from being queued via ioctl when it detects the "use_192_bytes_for_3f"
> attribute on the device.

Is usb-storage really the right place to put this test?  Wouldn't it
be better to put it in the SCSI layer where the ioctl is converted to
a SCSI command?  That way it would affect all SCSI devices with the
use_192_bytes_for_3f flag, not just USB devices.

Also, instead of making the command fail completely, wouldn't it be
better to change the transfer length to 192 if the original value was
larger?

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/80ef917b-3680-4f85-93ba-c92d2b69ebaa%40rowland.harvard.edu.
