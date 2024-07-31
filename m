Return-Path: <usb-storage+bncBCFZHPHU3ENBBR7ZVG2QMGQEFXYJN2A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x546.google.com (mail-pg1-x546.google.com [IPv6:2607:f8b0:4864:20::546])
	by mail.lfdr.de (Postfix) with ESMTPS id 500C3943564
	for <lists+usb-storage@lfdr.de>; Wed, 31 Jul 2024 20:04:57 +0200 (CEST)
Received: by mail-pg1-x546.google.com with SMTP id 41be03b00d2f7-7a2a04c79b6sf1193401a12.0
        for <lists+usb-storage@lfdr.de>; Wed, 31 Jul 2024 11:04:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1722449095; cv=pass;
        d=google.com; s=arc-20160816;
        b=lTxQMNtGtSlvWaL+lU8gz1QgnEtmhftkg3FSYs18VPEyeVAHtdxxFAIVBRKaa0gNlX
         2cXzpCql6LCL2gzI48YZbsFyYDtz8BdSuXp3zK2AI04SbPTozuapKdaE8Dy8myd7yKA5
         ilBB7Ac6+H2Ewa9RfOWzi/3rX4/srfcZLXVcJBi3+mD8wQFj38AWPX+mADje/b7r+zw6
         28BcKjf0+cvMD0fefwvWuChQnx1R+z0hvmDjYwTsI4NAzQlka5XkhBYCsiRiKUgdEb+6
         ge5C3SgxHVXfN60mFKnrtEchSb1ZLK86c+LWtJ6d/uKXKDZoZxFdZ/+tRIzotHqGYPF/
         uTzA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=0DiIthKv30LIL67QqEkKDVnzRsBCj/A1jzy0qWAS9iM=;
        fh=L+ni64UVLJZZEx21sWq30vKkqEdzN1EeODzIsHp/v7M=;
        b=OdHjcC3x0WgO0lMIedMMXGJif3oOXT9qkaaMg6vMj4fTzhyCSQebAkTJUtAOL2lIfF
         3jb2srDRGJYo97qJenuBSP6uUPbC08no7wKF9+qQIZcr6qTNMLNzYhiLsqHEZ7gQ+vDc
         AxI5GTYk6MFXNyb5f1rxnxrvFQTr3IpTpmmWX+l/W7NqhEWzD7hs08gCWkC2MERTWO/5
         1ykMvDx8qeVLLBfvIJQIInnrdbx0gDLguGERNU/gU66NtFqwdSw6QZQ5alE7weADNZT1
         mGiF4fC1QweuRgJmdCHp4HOeNZ2wAQm/zKTkFzvDixICvvnxy5clFr+XBUNqYLYn4V8Y
         Ndfg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=HU2Rf6en;
       spf=pass (google.com: domain of abhishektamboli9@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=abhishektamboli9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
       dara=pass header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1722449095; x=1723053895; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0DiIthKv30LIL67QqEkKDVnzRsBCj/A1jzy0qWAS9iM=;
        b=hJPF/FvzFoi6iFZF31JFRoXaR2k9HoJ89xIE3ILjkaMRnHNG89bawSBkHEyPI0IevK
         pLOV1/JBA9q/sJohQr2UvSvUwczmMFArGWqYdQ0Q9wdaaKPL3x5Fe2yM8zYL/hWzsE6u
         4CUPZg1gxu8viq69GVZvVjNOaM5W7jdTIt/B8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722449095; x=1723053895;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0DiIthKv30LIL67QqEkKDVnzRsBCj/A1jzy0qWAS9iM=;
        b=Y6D2CsQJAT7TuVERiPl7IsbMJEn6B8xLKk1calU9yiP1S9nI7mNTGE5zj/f7LO3a8Z
         GdrLmsXXg05dUkeSJ7XuXzc8dkasojgkmSfvQhpWiWZT/MYyUMgr6LwgwjNTcCPgGX5V
         7b8OAeZE+Hd+EfUA/Quk8q1IerJ8LhB92Up0vygaQz/pMdt8MytSew0Ik/WtY6xRKwNe
         MaoYn1Ex7htkLnbCTro0gH5n1mldYgTUV8+fiuhax5xCVfKo/lwvhCkpqolWVOiBPwfS
         dCiPBhPvl2QCcEux+aTlbmOXIparwEAxpCY7/dAhSU/8zJTTM8+0BY4vnHhoV9VET6SN
         VhuA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWPaPHeZ4Qaf7GZvvg334ZWnfqMSPbyB2jNZrR9N0zjZa18iTHED++OkjSCD97Pkzav9kZ6W+PplUNxZvnY4G7zTr1B/P+Ivz8g
X-Gm-Message-State: AOJu0Yxz0smSqu07lu5SwIvvQBBNblKKiTHMbtL5HNBgtJeivpSHPcUm
	noBbVifkwrXua6oeqnLzp8r30JjzY+ogu41izqVD0BYT8mXFag841RbUj4PLCoQ=
X-Google-Smtp-Source: AGHT+IGKuHm5OjS3S0uR9eOpEg7CTtZuxDIlk/gOou0AzzYZZIv96NErtc3TdmT12+PHd/NBSIezbg==
X-Received: by 2002:a17:90b:196:b0:2c7:49b4:7e3a with SMTP id 98e67ed59e1d1-2cfcaade55emr9573995a91.7.1722449095474;
        Wed, 31 Jul 2024 11:04:55 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90b:350d:b0:2cb:4e7a:cb9b with SMTP id
 98e67ed59e1d1-2cfd7d1f051ls315357a91.0.-pod-prod-00-us-canary; Wed, 31 Jul
 2024 11:04:54 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWHCea6qCOcTgiQp3PhVpLJv7iM4gPFF1laYKwp9pfp/DhSz4otBZDckgoA/79uIXWkrMFpLFizr3RCnAWjYI+0ZrQuKe2M1Yi+SeNbW/aD25LizZ4=
X-Received: by 2002:a17:902:c40a:b0:1fd:65ad:d8a1 with SMTP id d9443c01a7336-1ff37c0c7d7mr96327595ad.21.1722449094288;
        Wed, 31 Jul 2024 11:04:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1722449094; cv=none;
        d=google.com; s=arc-20160816;
        b=TkrLhy4kFL+czfYL2btw0mZ3FIgQMz0g7gfwuVMhWZ+Wul5OZ1ueqKkpQi2uKGzbqX
         mDtuw4lUhWo4hP49LsG4IV8rKF9i4cpdAi6H10qxZknCk+0Y57XzCd+FOlFyRPK54/n2
         xBcvakdDBUieD1u1mwdqX0X9VqmX4fCY9u0i137p4aUs+eCtYRLLoH7/8e7mDOK/Yk3q
         Nemn9rQi/Zb+UaE5iE+/KZ3vxKW1NS5ClWdr7sbkFEt6FG5HNknn1AJYZunP5ciYN8mS
         ebzEVasJSR+Y47cPfW1SakrmTazTT1sbQaQt/CiuquvPpHV4lUq+ybuWzM2L3m+eynkz
         rJVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=iqDcpi/n8xO7BkglMX5k5WSiH67lYtHRaeeKrrUno3g=;
        fh=qPFAUZYEBxG/q/BUVQtJuz9BZeqWIg6mmE7Pu1lkwxw=;
        b=AJSVN90xaUAKW4uiLNDli4BZygtrC2LQzheni8cYM78DLwwJv/tXZ84CsQVvTglEDU
         QL6xRwQlzioiBo89dtIwDLecEcfTgaOsw8J94RecAEqHM/R1rqJB1z3xuAnfX/TcFsi1
         uDw2rvZ55Matrg4UPqw2Q/QNsRg35idozefGmjKmS9hZFszXNeEPWpYn8Qkft2RW1c5l
         q0m+bhkEGtcy18aXLjz1UMwhl3y0DzF+YbjQ1skhLyD2SUrkKxpEYUyNTDMnxRn6g3NN
         aNUY1PpmgXI0wdc3hPbaRjK+AcS129aa23hveXu7jmkViB2ysdbI1MdIP0x9OwWHhDXw
         cNQQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=HU2Rf6en;
       spf=pass (google.com: domain of abhishektamboli9@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=abhishektamboli9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id d9443c01a7336-1ff44184a1esor9477085ad.6.2024.07.31.11.04.54
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 31 Jul 2024 11:04:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of abhishektamboli9@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCWsSaxPi4YHA/dw4ypHaw6axKkrOa//PzHAADzKLt/VcX4eNbaGew5TnGbsyFkiwe55Hl3+BDfqNrVxz397UVGrc/nBerUt6kYk87uhvVCJ4x395os=
X-Received: by 2002:a17:903:120c:b0:1fd:74ac:e6b8 with SMTP id d9443c01a7336-1ff37bc6620mr119657695ad.7.1722449093673;
        Wed, 31 Jul 2024 11:04:53 -0700 (PDT)
Received: from embed-PC.myguest.virtualbox.org ([106.205.109.112])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1fed7ee6a1esm123666655ad.164.2024.07.31.11.04.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Jul 2024 11:04:53 -0700 (PDT)
Date: Wed, 31 Jul 2024 23:34:45 +0530
From: Abhishek Tamboli <abhishektamboli9@gmail.com>
To: Alan Stern <stern@rowland.harvard.edu>
Cc: gregkh@linuxfoundation.org, oneukum@suse.com,
	usb-storage@lists.one-eyed-alien.net, linux-usb@vger.kernel.org,
	skhan@linuxfoundation.org, dan.carpenter@linaro.org,
	rbmarliere@gmail.com,
	linux-kernel-mentees@lists.linuxfoundation.org,
	linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: [PATCH] usb: storage: ene_ub6250: Fix right shift warnings
Message-ID: <Zqp8vbbIC8E/XrQY@embed-PC.myguest.virtualbox.org>
References: <20240729182348.451436-1-abhishektamboli9@gmail.com>
 <e72cc56a-3066-4cb8-848d-bfe27a48c095@suse.com>
 <ZqkpOQIjcBSAg8rC@embed-PC.myguest.virtualbox.org>
 <5d7870b0-6b63-430b-8885-2509b33dc78a@suse.com>
 <804a6d40-73a4-4af6-944b-95e9324d7429@rowland.harvard.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <804a6d40-73a4-4af6-944b-95e9324d7429@rowland.harvard.edu>
X-Original-Sender: abhishektamboli9@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=HU2Rf6en;       spf=pass
 (google.com: domain of abhishektamboli9@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=abhishektamboli9@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;       dara=pass header.i=@lists.one-eyed-alien.net
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

On Wed, Jul 31, 2024 at 10:04:33AM -0400, Alan Stern wrote:
> On Wed, Jul 31, 2024 at 11:15:28AM +0200, 'Oliver Neukum' via USB Mass Storage on Linux wrote:
> > Hi,
> > 
> > On 30.07.24 19:56, Abhishek Tamboli wrote:
> > > On Tue, Jul 30, 2024 at 09:09:05AM +0200, Oliver Neukum wrote:
> > 
> > > > 1. use a constant, where a constant is used
> > > I think you are suggesting that I should replace hard-coded values like the
> > > buffer size with named constants. For example:
> > > 
> > > #define BUF_SIZE 8
> > > unsigned char buf[BUF_SIZE];
> > 
> > Yes, but the constant we need to look at here is bl_len.
> > This is a variable needlessly.
> 
> The code in ms_scsi_read_capacity() is written that way to be consistent 
> with the sd_scsi_read_capacity() routine.  Or maybe it was just 
> copied-and-pasted, and then the variable's type was changed for no good 
> reason.
> 
> Replacing the variable with a constant won't make much difference.  The 
> compiler will realize that bl_len has a constant value and will generate 
> appropriate code anyway.  I think just changing the type is a fine fix.
> 
> > > > 2. use the macros for converting endianness
> > > Can I use macros like cpu_to_le32 for converting the bl_num and bl_len values.
> > > Should I replace all instances of manual bitwise shifts with these macros?
> > 
> > Yes.
> > 
> > > For example:
> > > 
> > >      u32 bl_len = 0x200;
> > >      buf[0] = cpu_to_le32(bl_num) >> 24;
> > >      buf[4] = cpu_to_le32(bl_len) >> 24;
> > > 
> > > Is using cpu_to_le32 appropriate for the data format required by this
> > > device?
> > 
> > Well, the format is big endian. So, cpu_to_be32() will be required.
> 
> Better yet, use put_unaligned_be32().
Would you recommend submitting a follow-up patch to incorporate this change, or should I leave it as is for now.
>However, there's nothing really 
>wrong with the code as it stands. It doesn't need to be changed now.
As you mentioned there's no need to change the code, So my initial patch is okay as is?

Thanks & Regards,
Abhishek Tamboli

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/Zqp8vbbIC8E/XrQY%40embed-PC.myguest.virtualbox.org.
