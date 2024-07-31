Return-Path: <usb-storage+bncBCFZHPHU3ENBBFM4VK2QMGQE4EVJYDI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x645.google.com (mail-pl1-x645.google.com [IPv6:2607:f8b0:4864:20::645])
	by mail.lfdr.de (Postfix) with ESMTPS id 36A7E943643
	for <lists+usb-storage@lfdr.de>; Wed, 31 Jul 2024 21:18:48 +0200 (CEST)
Received: by mail-pl1-x645.google.com with SMTP id d9443c01a7336-1fc52d3c76esf55836455ad.3
        for <lists+usb-storage@lfdr.de>; Wed, 31 Jul 2024 12:18:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1722453526; cv=pass;
        d=google.com; s=arc-20160816;
        b=yTMn9nU6w99Z4sqVzu6+2WGsILCL2BvVOs8dc34qURt2PTR4HNfWpr6WojE5UotkV8
         LgAWLD/Xt8LQbUHF/RUrw5gF8B6KrZch3K49B7Rwmbv2gZ4Q9+9JuDWGVYOJnAW3v6NL
         Fhy9Vv8g6oXMqxPjTJ47lu0eC7L6tdveA+taxFBG7KIXuBpVCO+mpeI9p56IkW51AZ/y
         iBpGqq6tvl+m2TwHz1yC5Y5Rd08JbB2MoGYL9VhA+kzd1S4k8c9nxXkX9+Lgxv7a1FlD
         GhouVCO1fsSnFMGE+4eTbxCDHrDIYjlWGigK2jSqztDi1GNHeI83ow/StfBzXfxWNMVy
         TRtw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=DhDUtwvjnaqlxUzx1lH8er337uepQrHk2CvpU+3Jrzo=;
        fh=XB2blYrYzpyDQih6jg2KGhIYGR3L8LN9XfsEGaLmJMk=;
        b=m986Cvdm9m9KD0XvYwaKrWbyubaF4rtw8LVyB61aW+Ee6WVEUzyJSHcGq0eL/x892s
         p3IyYw6TpmiPATJTANHpw+aKC1CZq80Cs+ZyeqBP8yLqbCEw4sPm3oaVJjJF8yqX5eoV
         Tqw2vxQjzQq0mH7YtluWamxWS3MlTgj5+nXpR22W/XSuno4NuqWTzIj8FgNno3hZDBin
         nVdlP8iSv/3Q3Tfc1YPMM9ZQG0zLS+xB9WKcv83iFrWzAk2IZiw3HTOHk8n7DXK0hV5R
         lUlLl9qhldHbUp3zom4gmQYOjy9ILmKRSrDs/BQWvxA/G5SImO7mTPCsLKDJnGYKtTbM
         aESA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=PsqpZ9eo;
       spf=pass (google.com: domain of abhishektamboli9@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=abhishektamboli9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
       dara=pass header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1722453526; x=1723058326; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DhDUtwvjnaqlxUzx1lH8er337uepQrHk2CvpU+3Jrzo=;
        b=jTN01bVL3kKMXxl+qS1p9QfVWayIJUoA8ZBQfFmI/Xzal3TNHVvYK18l2rT5hjQynw
         vDS13TOkRY/0qdvO1RjzDQtH5Nr8v5J/GoYJKEAyLBuMGc62JbeeeXckiaYF8LJdcObn
         B/p6ZVBhET7pV5i2cQH2AjPSW3IYYBDj1YvGY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722453526; x=1723058326;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DhDUtwvjnaqlxUzx1lH8er337uepQrHk2CvpU+3Jrzo=;
        b=Bxi4qRFQHZxDujckybak/41lOtobhRB4qoe8y5CESmihXwh1AzPaJDDs1kQ4K9QtLB
         MnrxX5me4UGz+ZT5nFHEiloWaz0xNX/kAPoUACseAviOu8Yk1C8zr7AxPn4Fk0gECaBq
         EjeNolIABAYi3csdhhduBC1fBGnBW/GDSWBFOqHjpqZNaF2O4+DS0bUeC9oUcrr5Oxxw
         FMoHoC8QmSr3g57OzyCTWzyJi+jAiIuPqND64YYwyCFvnYtwlUUc7adSU1R4toqtnedi
         SP3K0Grl8aCaULS9Vqq47O7TDfknxySyH9TGAUYUF0yT7Fww771h1LpiPY68lnCgXckQ
         xNKw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWxoFCJUsmZSmZ72TRV+gGmXrSQllKIyIJwlbcMCvUdvupkjQE5MkfO+Vs6zdFjW21bbRHfAYD19aaepZxLnjrHcOcWDIu/1IWW
X-Gm-Message-State: AOJu0YwUVIIsCpXaM1X3dih35CPiuA6ErCcPxB6itJSnF/h2C10rERHp
	38ICj91tdvYRlwmZ2206gUle0ox2Ko7WGhSjnECHJdDaeOPTBt7hJFVw+mIbTj4=
X-Google-Smtp-Source: AGHT+IGu43syQCp3h1lnH4pvOBWfVhyEY02L1MdyZjioNeXfH9AG+srFYKFms+5sao1u/Rz/k6fLqA==
X-Received: by 2002:a17:902:ec89:b0:1fd:6eec:1b4 with SMTP id d9443c01a7336-1ff4ce8c33dmr3455275ad.19.1722453526186;
        Wed, 31 Jul 2024 12:18:46 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:da87:b0:1fe:d72d:13f9 with SMTP id
 d9443c01a7336-1fed72d24ddls49119915ad.2.-pod-prod-02-us; Wed, 31 Jul 2024
 12:18:45 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXkbVxk1zFsJmHPgcnp3eVn8bEoQxLR6jdzJulo3dPBVGwDpECpu+B3jIetsZGGWnFyGJOkb1Ft8Vbh0Y502f/M71RlSx0OkUmtlnKvY3z/SsTy4kg=
X-Received: by 2002:a17:902:d510:b0:1fc:6acd:1ecf with SMTP id d9443c01a7336-1ff4d2658d3mr3638125ad.65.1722453524946;
        Wed, 31 Jul 2024 12:18:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1722453524; cv=none;
        d=google.com; s=arc-20160816;
        b=auv31sSMPxkBQhQYibe578kBCucI6y90lccSef2AnJAm2L+9Jnlu3a++f4l9BUQFTD
         qBOHSHYdNRtifIhntrrvAIKSL0HvZxT3uuWo4yRNc+ADjTVxIc+GfSAvNRa48z+D+pXZ
         6iFYnzN1q/PxPM43LJl/Pdci5SiT6I01b1fnJ7OR9Kj5SxLjKlWurYbrywmZiZPZBKL9
         6uyCzMTjQV+Kf1XjY6+T0a5yMHKh4sh+euiLvz8Md98boysi9yiSMJf1uV9qc0G9nK4y
         2QNAD2lZaKNlY5fjMVeWcM9LTSEJc7ROlfMIxEAXToivB4L6YL2uFuQ2xVudBUp1veRl
         ijMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=YKmXPYGLiuooxOyOTiioTCzv35HEsS/Fq6QbtaZlhZ0=;
        fh=dM0FCNbzXZwm+4j0cCKa/Mj6VP+6NJin2ul91UK2oH4=;
        b=uKn5LZWB8ZzmtYI5ghrpsndiVVIrhhXOBcFm8LWkdYy5FCp1EaFX2nsB/hRNfSHqmI
         14CWgminErPxb0YfpSLiAjsQ8Z8EWiKXsUnn7FpK27mOm5tWiIt7TmK1DwoFvK6ICyJM
         SmWqBvqR8YgZyl5JlMncegX6Wbjrg9O9WdwFiCDvE2Y6Hmf1x1Z2XXs6BiRjsqUoHhNs
         K2MLWuZ/5gkIiemDxli7ZbBYJCGwUrj1nCfxY40oFLWziEx2tA5AynfDd3fm34NijDZB
         hVhOoeK02QW2x1bZuLSJOxVBHfhIsy2ZgGjDa97Y+5pUKx+diTEQRwNwH17D2vqPphTe
         14jQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=PsqpZ9eo;
       spf=pass (google.com: domain of abhishektamboli9@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=abhishektamboli9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id d9443c01a7336-1fed7eec87bsor86583875ad.14.2024.07.31.12.18.44
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 31 Jul 2024 12:18:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of abhishektamboli9@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCVQJgUaK3tcfcCFKvsrI/PrCc7xaKB/lI45OHS6Gvo+xzexeVE1zUwUHRNumlL70PFNd6czqUqRS55fyT8sWoJMDMTfnHlkoaDphClqqUR2cw4PTNw=
X-Received: by 2002:a17:903:2349:b0:1fb:4f7f:3b59 with SMTP id d9443c01a7336-1ff4ce5792fmr3809585ad.3.1722453524371;
        Wed, 31 Jul 2024 12:18:44 -0700 (PDT)
Received: from embed-PC.myguest.virtualbox.org ([106.205.109.112])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1fed7d37745sm124165475ad.112.2024.07.31.12.18.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Jul 2024 12:18:43 -0700 (PDT)
Date: Thu, 1 Aug 2024 00:48:33 +0530
From: Abhishek Tamboli <abhishektamboli9@gmail.com>
To: Alan Stern <stern@rowland.harvard.edu>
Cc: gregkh@linuxfoundation.org, oneukum@suse.com,
	usb-storage@lists.one-eyed-alien.net, linux-usb@vger.kernel.org,
	skhan@linuxfoundation.org, dan.carpenter@linaro.org,
	rbmarliere@gmail.com,
	linux-kernel-mentees@lists.linuxfoundation.org,
	linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: [PATCH] usb: storage: ene_ub6250: Fix right shift warnings
Message-ID: <ZqqOCYZ6TtXdXpea@embed-PC.myguest.virtualbox.org>
References: <20240729182348.451436-1-abhishektamboli9@gmail.com>
 <e72cc56a-3066-4cb8-848d-bfe27a48c095@suse.com>
 <ZqkpOQIjcBSAg8rC@embed-PC.myguest.virtualbox.org>
 <5d7870b0-6b63-430b-8885-2509b33dc78a@suse.com>
 <804a6d40-73a4-4af6-944b-95e9324d7429@rowland.harvard.edu>
 <Zqp8vbbIC8E/XrQY@embed-PC.myguest.virtualbox.org>
 <b35a344a-018b-44ae-975a-7767a3d5b6ec@rowland.harvard.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <b35a344a-018b-44ae-975a-7767a3d5b6ec@rowland.harvard.edu>
X-Original-Sender: abhishektamboli9@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=PsqpZ9eo;       spf=pass
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

On Wed, Jul 31, 2024 at 02:19:54PM -0400, Alan Stern wrote:
> On Wed, Jul 31, 2024 at 11:34:45PM +0530, Abhishek Tamboli wrote:
> > On Wed, Jul 31, 2024 at 10:04:33AM -0400, Alan Stern wrote:
> > > On Wed, Jul 31, 2024 at 11:15:28AM +0200, 'Oliver Neukum' via USB Mass Storage on Linux wrote:
> > > > Hi,
> > > > 
> > > > On 30.07.24 19:56, Abhishek Tamboli wrote:
> > > > > On Tue, Jul 30, 2024 at 09:09:05AM +0200, Oliver Neukum wrote:
> > > > 
> > > > > > 1. use a constant, where a constant is used
> > > > > I think you are suggesting that I should replace hard-coded values like the
> > > > > buffer size with named constants. For example:
> > > > > 
> > > > > #define BUF_SIZE 8
> > > > > unsigned char buf[BUF_SIZE];
> > > > 
> > > > Yes, but the constant we need to look at here is bl_len.
> > > > This is a variable needlessly.
> > > 
> > > The code in ms_scsi_read_capacity() is written that way to be consistent 
> > > with the sd_scsi_read_capacity() routine.  Or maybe it was just 
> > > copied-and-pasted, and then the variable's type was changed for no good 
> > > reason.
> > > 
> > > Replacing the variable with a constant won't make much difference.  The 
> > > compiler will realize that bl_len has a constant value and will generate 
> > > appropriate code anyway.  I think just changing the type is a fine fix.
> > > 
> > > > > > 2. use the macros for converting endianness
> > > > > Can I use macros like cpu_to_le32 for converting the bl_num and bl_len values.
> > > > > Should I replace all instances of manual bitwise shifts with these macros?
> > > > 
> > > > Yes.
> > > > 
> > > > > For example:
> > > > > 
> > > > >      u32 bl_len = 0x200;
> > > > >      buf[0] = cpu_to_le32(bl_num) >> 24;
> > > > >      buf[4] = cpu_to_le32(bl_len) >> 24;
> > > > > 
> > > > > Is using cpu_to_le32 appropriate for the data format required by this
> > > > > device?
> > > > 
> > > > Well, the format is big endian. So, cpu_to_be32() will be required.
> > > 
> > > Better yet, use put_unaligned_be32().
> > Would you recommend submitting a follow-up patch to incorporate this change, or should I leave it as is for now.
> 
> You can submit another patch as a clean-up, if you want.  But as I said, 
> it isn't needed.
> 
> > >However, there's nothing really 
> > >wrong with the code as it stands. It doesn't need to be changed now.
> > As you mentioned there's no need to change the code, So my initial patch is okay as is?
> 
> It is as far as I'm concerned.  Obviously Oliver has a different 
> opinion.  But I'm the Maintainer of the usb-storage driver, so my 
> opinion counts for more than his does, in this case.  :-)
Thank you for your clarification and support. I appreciate your feedback.
I'm glad to know that my initial patch is acceptable to you.

Thanks & Regards
Abhishek Tamboli

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/ZqqOCYZ6TtXdXpea%40embed-PC.myguest.virtualbox.org.
