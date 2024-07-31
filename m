Return-Path: <usb-storage+bncBD64ZMV5YYBRBT4AVK2QMGQEBQ3II3Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x845.google.com (mail-qt1-x845.google.com [IPv6:2607:f8b0:4864:20::845])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A3B2943587
	for <lists+usb-storage@lfdr.de>; Wed, 31 Jul 2024 20:20:00 +0200 (CEST)
Received: by mail-qt1-x845.google.com with SMTP id d75a77b69052e-44ff816bf5asf82876501cf.1
        for <lists+usb-storage@lfdr.de>; Wed, 31 Jul 2024 11:20:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1722449999; cv=pass;
        d=google.com; s=arc-20160816;
        b=VAQJv4ySrTsaqnPdayw+A/CVWHuLerazxx5XWT0+VrNdGUuHUEOuSEOSbEqQLL5DmY
         ACQEciOMvtV0gmHsR7QFmk26JnsLbVVOO8SlT6mTwd2DNUQQaodfmiTYqRUOXFwvqUIW
         QOvLswJT9yYvVaURbZ2pGZFhlJy/2/xfdBCDWIBUsL/ek19t+azVTlfgmjBgOyHQ3PiW
         PVPp2FBWKzJx6soNT8F3zpBOy5aMJalB3CVuLxE1J5G6KKWmFL/1N8gdf3vL2EjfFzja
         oWCWU6vtHlNchxqQWZrKQFZpsFR6FEy5+bP/Hl8uKVmv9L3DF61l51rwh6YSj9fMDK88
         w9pw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=B2PTpjYWaklyn8h8219eXW48qWgoJjQwSAMMBqJ3Qd4=;
        fh=2E6aagvyNBs1Kj706U2v6REXP5RAPFVbHit0tP+cKJ0=;
        b=aomA0oXWyGpVgZ8luNCrTZoEdH1wugkuN56PzKIN5SxH8gvWemSOsu5GXTWGmfclpi
         AMJQQqBRYPk9LeTPjBcBLzlMeESrTOjWKX32sEOatuq3lTxNyJqc6PFkXOQPsYWzEXlj
         hc/dbEQDA6zIb7bRzNBPxkDIWOxKyiEr6gOyl+XvOmwpyLMAIontPlHPh3gjb6TG3jcy
         B6dKHPrC4YHAMQe9lam6zCG37+EI+WS0jbcx3pYl2lw3SGbcOHP3a/nggEg2JRWybGOE
         REeaDo7skmCDE+43ACIHgrBxepv4JpdKzr5QlFMAqX3Fjsx0bZggaVdnML4CROl0KYmt
         wXDA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b="I/KNMYDK";
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1722449999; x=1723054799; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=B2PTpjYWaklyn8h8219eXW48qWgoJjQwSAMMBqJ3Qd4=;
        b=jtJLtMpcRu2I8iB9gLeQCfA6XIXbkdboXpATQpKBzcglvzWGX6+Floyhj0KsS3FtbS
         mYZVmPNlcs+tjpV6DtHy3M8RB2YIyQSP9C1h4LlvY2nwhcmfJlUA6F4T3QuIkxkn0mbz
         1t1IJnP1vlhoLl4XPHcVHREnrkOqQ3YXd5FSY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722449999; x=1723054799;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=B2PTpjYWaklyn8h8219eXW48qWgoJjQwSAMMBqJ3Qd4=;
        b=nyk3T9Z6js2SmDzwxYvrep0tgVL7Vo4lw36MA60B6K0MGnfBo9xH+dUuJQ2X3jnf9p
         m2lSE9RU7twLkYzJVbu7WA4pzebR3HW+YMSvrdBdZ8WAdPfYoUgdblRl0jvRqP90K7Tf
         jBAJ+wezv7Cii3+7WP582+pSMFwwdB34lXviI7IjYqE9q9/KVuUuXowpL3xGihqCs5Lh
         C2224idGJfsYNt6HpJCM6YEYceg8meLxbb+csQFOCcVDTUlDEst7erRWMKPZsnKB7dV+
         dm6QfTnkRDX8FfAljFwftMF1EGFtK05GFUtYM99YpO7f/n9ixzoGP9P37AzDUyDEIZDC
         NweA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWjcC87xy+FZtEPzVF0Z05d4l3d8iSPrsFFbU7qCFeLRYDM1tR6EI5jXXm3RGV/Hzt9wo/tMYwAVLbY93Cx18ZE5tiYqZFrhkzp
X-Gm-Message-State: AOJu0YwhPjjWPnz+ZHRCc27QlwFbPYd/q+aoCR9hFQBPwch6db30YFpT
	cnnrZnkIKyAF1IniCIV0bjHZXLMHfAmlYPa/cWJbG49quylhpO4w7D8MrybXrvg=
X-Google-Smtp-Source: AGHT+IE5aW0bclyzhEbcWjHJzYlyUoCVXvTxKoZCnBFz+CdE31yf9ecd9S+rUggFFNj+0e3uWLFoWA==
X-Received: by 2002:ac8:5844:0:b0:447:e83a:104f with SMTP id d75a77b69052e-4514f99d91emr1728871cf.29.1722449999187;
        Wed, 31 Jul 2024 11:19:59 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:622a:1a13:b0:441:5568:9dea with SMTP id
 d75a77b69052e-44fe325fd62ls131681221cf.2.-pod-prod-06-us; Wed, 31 Jul 2024
 11:19:58 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUhPcBpC93HRoQV8r4c1JH60w1huI5dvgEMJPf29DtYmEyyrR0bgXHIqPPFsnh7EDcJC6Oauw2MHX5UzFZnGQzNKxNG49w1h4QDkGY+rCPP8yqu3zg=
X-Received: by 2002:a05:622a:1808:b0:440:279c:fa0a with SMTP id d75a77b69052e-451567b311cmr1687691cf.53.1722449997861;
        Wed, 31 Jul 2024 11:19:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1722449997; cv=none;
        d=google.com; s=arc-20160816;
        b=oRQrTaDA1Xcae9L5VdiQEYRV2csVPIst+38+8pb9UqCRLQrX2jJ24pWqvoTiB/M9eF
         dFELUCs63ZoKH50gQzEca0SkyHW2x3NsITBFkE9ZOJt/A/HVqYhpCN2buxP78+q1dIPN
         +4k2rNEdF1c8ZpeEcycD2ML+/SxB9g7RnZiBet0ow2zWS+iRU9hyRwXdcCyKGxZv5bhn
         nA0hjr8dcgw5svmH11HBo347K9/bh5JhDt4e/vPPHZm+kEL+rXtwEXrk38FHgXZIDPWM
         52HgkiXN297Ju7PGI4mrXupNy6wMMku0FgrOybOLnOWqIPg3PUMe5wTh0TPlYmog8W+b
         VrKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=SnOSTDz5p85GiwsKhk/eE53XisA23eDTKA9fiAEKZb4=;
        fh=yCUGrHO9Xztkq8RpFGXMbjqgh0+5VRQ4vsXrsqUAlCM=;
        b=VfSwjOBVTdcxG1GBFA6EYBVe+9TWH30EU8E2L85w5hEf3foX5JkjGJI/M++tCjxx3Z
         R85VUJaiPiNTqgjxdFvv2b1Au564ldZHhCd5MEnjp/Y6b7V6P7DElVtv7bMrSOzvFTPi
         Xw9v8WK+V5xQHRHi6TZjzPmniJb8YU4gw3wS2eanE7Wgmmaof1vdV8CDNZ9qBumHmyVL
         yD4v1yC70hUoorNjSp6ds+m8Ng+ob7S3WHuDQnK+YHMjzewKdnhK8kernienciI9Mx7S
         sBklVm9DLwRZWvpKX9DTethlMb0XAv8h6eqW9eZ/oyF1YjFzUiWDQopfJXcrwh+5LAzT
         /z5g==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b="I/KNMYDK";
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id d75a77b69052e-44fe8586d23sor101906601cf.8.2024.07.31.11.19.57
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 31 Jul 2024 11:19:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCXGKEKJFz0l2aPSg4qPSY2gY8FKzi1930PKhDqu/U4xNAefSqBJ9Apm+0wwrtqEhNkw6I204QsyKyg0daTVzc0EccNHRtLF/46+sRstQC7Y6cX8BwE=
X-Received: by 2002:a05:622a:249:b0:446:60ba:610a with SMTP id d75a77b69052e-4514f965be1mr1668221cf.9.1722449997405;
        Wed, 31 Jul 2024 11:19:57 -0700 (PDT)
Received: from rowland.harvard.edu (iolanthe.rowland.org. [192.131.102.54])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-44fe82012bcsm62119401cf.66.2024.07.31.11.19.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Jul 2024 11:19:56 -0700 (PDT)
Date: Wed, 31 Jul 2024 14:19:54 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Abhishek Tamboli <abhishektamboli9@gmail.com>
Cc: gregkh@linuxfoundation.org, oneukum@suse.com,
	usb-storage@lists.one-eyed-alien.net, linux-usb@vger.kernel.org,
	skhan@linuxfoundation.org, dan.carpenter@linaro.org,
	rbmarliere@gmail.com,
	linux-kernel-mentees@lists.linuxfoundation.org,
	linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: [PATCH] usb: storage: ene_ub6250: Fix right shift warnings
Message-ID: <b35a344a-018b-44ae-975a-7767a3d5b6ec@rowland.harvard.edu>
References: <20240729182348.451436-1-abhishektamboli9@gmail.com>
 <e72cc56a-3066-4cb8-848d-bfe27a48c095@suse.com>
 <ZqkpOQIjcBSAg8rC@embed-PC.myguest.virtualbox.org>
 <5d7870b0-6b63-430b-8885-2509b33dc78a@suse.com>
 <804a6d40-73a4-4af6-944b-95e9324d7429@rowland.harvard.edu>
 <Zqp8vbbIC8E/XrQY@embed-PC.myguest.virtualbox.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <Zqp8vbbIC8E/XrQY@embed-PC.myguest.virtualbox.org>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@rowland.harvard.edu header.s=google header.b="I/KNMYDK";
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

On Wed, Jul 31, 2024 at 11:34:45PM +0530, Abhishek Tamboli wrote:
> On Wed, Jul 31, 2024 at 10:04:33AM -0400, Alan Stern wrote:
> > On Wed, Jul 31, 2024 at 11:15:28AM +0200, 'Oliver Neukum' via USB Mass Storage on Linux wrote:
> > > Hi,
> > > 
> > > On 30.07.24 19:56, Abhishek Tamboli wrote:
> > > > On Tue, Jul 30, 2024 at 09:09:05AM +0200, Oliver Neukum wrote:
> > > 
> > > > > 1. use a constant, where a constant is used
> > > > I think you are suggesting that I should replace hard-coded values like the
> > > > buffer size with named constants. For example:
> > > > 
> > > > #define BUF_SIZE 8
> > > > unsigned char buf[BUF_SIZE];
> > > 
> > > Yes, but the constant we need to look at here is bl_len.
> > > This is a variable needlessly.
> > 
> > The code in ms_scsi_read_capacity() is written that way to be consistent 
> > with the sd_scsi_read_capacity() routine.  Or maybe it was just 
> > copied-and-pasted, and then the variable's type was changed for no good 
> > reason.
> > 
> > Replacing the variable with a constant won't make much difference.  The 
> > compiler will realize that bl_len has a constant value and will generate 
> > appropriate code anyway.  I think just changing the type is a fine fix.
> > 
> > > > > 2. use the macros for converting endianness
> > > > Can I use macros like cpu_to_le32 for converting the bl_num and bl_len values.
> > > > Should I replace all instances of manual bitwise shifts with these macros?
> > > 
> > > Yes.
> > > 
> > > > For example:
> > > > 
> > > >      u32 bl_len = 0x200;
> > > >      buf[0] = cpu_to_le32(bl_num) >> 24;
> > > >      buf[4] = cpu_to_le32(bl_len) >> 24;
> > > > 
> > > > Is using cpu_to_le32 appropriate for the data format required by this
> > > > device?
> > > 
> > > Well, the format is big endian. So, cpu_to_be32() will be required.
> > 
> > Better yet, use put_unaligned_be32().
> Would you recommend submitting a follow-up patch to incorporate this change, or should I leave it as is for now.

You can submit another patch as a clean-up, if you want.  But as I said, 
it isn't needed.

> >However, there's nothing really 
> >wrong with the code as it stands. It doesn't need to be changed now.
> As you mentioned there's no need to change the code, So my initial patch is okay as is?

It is as far as I'm concerned.  Obviously Oliver has a different 
opinion.  But I'm the Maintainer of the usb-storage driver, so my 
opinion counts for more than his does, in this case.  :-)

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/b35a344a-018b-44ae-975a-7767a3d5b6ec%40rowland.harvard.edu.
