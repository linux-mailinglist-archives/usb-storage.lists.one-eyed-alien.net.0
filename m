Return-Path: <usb-storage+bncBD64ZMV5YYBRB5UIVG2QMGQEJBF5FII@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x846.google.com (mail-qt1-x846.google.com [IPv6:2607:f8b0:4864:20::846])
	by mail.lfdr.de (Postfix) with ESMTPS id 9424394319F
	for <lists+usb-storage@lfdr.de>; Wed, 31 Jul 2024 16:04:40 +0200 (CEST)
Received: by mail-qt1-x846.google.com with SMTP id d75a77b69052e-44fe1a88f85sf83527201cf.1
        for <lists+usb-storage@lfdr.de>; Wed, 31 Jul 2024 07:04:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1722434679; cv=pass;
        d=google.com; s=arc-20160816;
        b=zpWmEgKkcYmHqPXf1Kxw9N8gt0iHRyfIFQGtK44Luu3P6ZfquMqDOpzQ5ChcCveGT6
         z07dYcQzzU0769Lz1EoccxkICZSLIE3Yl7cpwUNL8Rwdrz0iLcjsZ29cQjQBcOhgcOqT
         LEAPjQsirpa0JCJOnvDuyJ5KSeQUcZxwld4jLH4fLQ2UyJY+X4FfU7X15kKCDxbfb1yW
         q1CNBKcU59gJweUE9oyfM6Bz9kIrBh5QMitkKoHgBBZ6AjSNsnDa+9/nV18xWEneTDgx
         x/ejUMDulTZzun5QqEWAPJP7R9S0MpYGdBIm+Rs/CWIO8ym/VZqaElMMiZhb1RCGlig1
         yUsQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=13JN8leAIzk+K7mDzTG/om4O302kvAuJqqRTnuU7j8s=;
        fh=9mTzpH5A9sITnRe8ohMacxs5B46csEkrfovmS/MiBZc=;
        b=uZbov8oz5rIAMblVAI+YXmYyQ4eVNOsHbXQlVYnQjGK1F82ObGDbNnEwuIl+B4kxa/
         VddnCxtk+tSPr1qZEV2RyAsmtVHFzjmqEY8jw2xPBjlz7v0PndrIw0tFui25GhEXWdpO
         aJAvIhsY7YrfB/GCQBw0pur/Ko2jqzdAZzAageKxo5oPKj2Clbm0VoXU/HEZs/iDYfBa
         J8VrjiDdSSNdmUDFSmvEtoXBhRoDhobYanDW7w60GOl04bxq6LAde7tt89raIz9Ka9yE
         +/RRJspbh9XK/PcGnl1LlD7g/szCvmcLBHJh7OaRDle52NAbivSz0Kh9u3Lbax2tb5Tp
         WIKQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b=df8YFAQx;
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1722434679; x=1723039479; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=13JN8leAIzk+K7mDzTG/om4O302kvAuJqqRTnuU7j8s=;
        b=MgyVDFjfACbT29zs3cNWivMtYcHKKxZj8DK78y3V60UjTsweEWfwmwbYoARZzTOLHA
         RrdBqURT5Zept7caOHe05Pe1GLKzupSFwth3PWR2t57RsZQzu8ADcMBYu0VTCiVP0Oig
         yhZp6yv7udDKV2XEvExDg/DtdInpd6Avy510A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722434679; x=1723039479;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=13JN8leAIzk+K7mDzTG/om4O302kvAuJqqRTnuU7j8s=;
        b=nN9YpPixjoJY6RWJyI1AAdFiiMfX8HR3OAQsFfqBYMzwJoAfc+Ln9yO9KHeCc/cExp
         SvNdD42ABEsd9JHYKi9nMu7qCGDlUNhzxbzZ/N3iXyd3qoiCxT1lbH1IHyou5K6pfOSk
         i8lfe4LgVgvJiPVh29+OCfJnRhNkVQW0VP60zGvnwEuG7CiKQ0EuT5Uwl4UWn8WoLhsp
         bMnJeZj4H5f8w6CkUhoLHfp7XWqbMrHjK+WV3A5vmubUEkFO/a77g2mKKef12U6R0XEf
         nq9EJMwgpbkS5eUWjF1ZPewGgyy9mlK4jSyuOUMw4jRydfd9am7aWmTTH0jLGAqKZxoJ
         xhag==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVolzXqfcSov+fJ+gi7J+L+5Zy4npIv6hAztXbbwZy2volPHrFGzi3rMjxrlXaWjkEdmuSUU1xWk+vDlpINE374BXIRvUfvFED4
X-Gm-Message-State: AOJu0YxyD8A3C71qLFvQhK4dJg5goLpVgETtNEc3cinMuVnVP0ScQu4T
	fYc2sQBZhMJBx+5ZCIEXpLHwxk3hg8YTDt5HJ1RuPvkDM2Cwath1+4zp6oWvLRE=
X-Google-Smtp-Source: AGHT+IGghVxyb5Hcpigf3fGfeSOp7s4leyhTBBBiVOOcMkxvVWWfugVwak5IFC3yx1x3HL0apatGxw==
X-Received: by 2002:a05:622a:256:b0:446:3add:2cf7 with SMTP id d75a77b69052e-45004f79032mr150978411cf.56.1722434678627;
        Wed, 31 Jul 2024 07:04:38 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:622a:138e:b0:444:e88c:beed with SMTP id
 d75a77b69052e-44fe31ecb0els127196521cf.2.-pod-prod-02-us; Wed, 31 Jul 2024
 07:04:37 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCU1/9OQviLw7kfqJa/F7WM9Ekko3yzfYFcue/X6rBx95vLJo7ABkBTGjACqtzeOu/jJZp+5S0cN7/joehJjfo1PvgpoxW6BfntSiOmE5lJrjmDay5Y=
X-Received: by 2002:a05:620a:4507:b0:79f:c81:3051 with SMTP id af79cd13be357-7a1e522437bmr1815540985a.2.1722434677350;
        Wed, 31 Jul 2024 07:04:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1722434677; cv=none;
        d=google.com; s=arc-20160816;
        b=mPeqybwiQVZwi8kdifKmckvLEiE/r2/Wt2fQn5DnuSGN01Z8mJeI7rXveq/xHvVdl6
         4iUiRRY/aRNJjKGCOzK8T+lS4iFZ+n5/nPexprJPgZBaqG2ky3OYtoVBcHlvNOgnfISE
         K8x2ShSNrz9sTnip6TJxtbOeuQ/UpxnhXLL9AgZuZkE5bvlTwuEdnizMT7Pv0nhlJY8a
         lZZmvD7iIGqc8CTAfXXTc4oNd/y9bviTBE3P664bfcNkAzzqEx+z9ZcStzIZWTVmQZ8+
         o30fQzafpA6NEhgO5yNTExnqyn1U1TghhGyQjcqdd3P3WkuuIEW1jIO2SkqkuhZLSTqA
         NQUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=a33CO1uHADQ6sgXZQtQE5aEWMq1kTwgBEoJ/8BHTMSw=;
        fh=frCrot5dyOwQr3Pv3AnPIQKeiHX2OwFhqyIX56Ua0aU=;
        b=qToLAfI3rLYqNCNcPRNb2xvbFCsmwuvZT5HHfFmXKt1cdOxB6AejXZKvzmkCkDT33w
         gaXmb/RGk9yuZstJsWG/fa21chPa3jeJjmxwY5sqNAOzTxgYoWTfmJf0fSYTqXUq++XB
         1fgHbUIwsAh38q5gq2EuopTYu3mpTy7IxlKrFczk3Vko3aZY8AqMxOTYfCmjWkbTkdSS
         BcpbsJ8mzBkbBc4KzBJumSkiC+iV2aZvvEAXm6Hn7n39aTcVepm3HIlavHnveoZglHEB
         0c6fkIua5WK3VfaXsWshjg3WF0g6AXXkTvGhTp5SdR8rqrVr9C5XjGw1TU8k0ivNUKtu
         ssqw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b=df8YFAQx;
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id af79cd13be357-7a1d7414a8csor1040721385a.12.2024.07.31.07.04.37
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 31 Jul 2024 07:04:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCWj8iGDl0ophcf7gTPMrCI7y5+0mAI6c6TKzYvePhToj6caCVGxddBgTM0mb2+cBXEQms7Mrrgg9SJcWoY/p3LLMsZebnJYS55oIp8fdaZsNYTGF4A=
X-Received: by 2002:a05:620a:8016:b0:79d:9102:554a with SMTP id af79cd13be357-7a1e5223dddmr1848014585a.14.1722434676796;
        Wed, 31 Jul 2024 07:04:36 -0700 (PDT)
Received: from rowland.harvard.edu (iolanthe.rowland.org. [192.131.102.54])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7a1ddea0c2asm645807185a.27.2024.07.31.07.04.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Jul 2024 07:04:36 -0700 (PDT)
Date: Wed, 31 Jul 2024 10:04:33 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Oliver Neukum <oneukum@suse.com>
Cc: Abhishek Tamboli <abhishektamboli9@gmail.com>,
	gregkh@linuxfoundation.org, usb-storage@lists.one-eyed-alien.net,
	linux-usb@vger.kernel.org, skhan@linuxfoundation.org,
	dan.carpenter@linaro.org, rbmarliere@gmail.com,
	linux-kernel-mentees@lists.linuxfoundation.org,
	linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: [PATCH] usb: storage: ene_ub6250: Fix right shift warnings
Message-ID: <804a6d40-73a4-4af6-944b-95e9324d7429@rowland.harvard.edu>
References: <20240729182348.451436-1-abhishektamboli9@gmail.com>
 <e72cc56a-3066-4cb8-848d-bfe27a48c095@suse.com>
 <ZqkpOQIjcBSAg8rC@embed-PC.myguest.virtualbox.org>
 <5d7870b0-6b63-430b-8885-2509b33dc78a@suse.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <5d7870b0-6b63-430b-8885-2509b33dc78a@suse.com>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@rowland.harvard.edu header.s=google header.b=df8YFAQx;
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

On Wed, Jul 31, 2024 at 11:15:28AM +0200, 'Oliver Neukum' via USB Mass Storage on Linux wrote:
> Hi,
> 
> On 30.07.24 19:56, Abhishek Tamboli wrote:
> > On Tue, Jul 30, 2024 at 09:09:05AM +0200, Oliver Neukum wrote:
> 
> > > 1. use a constant, where a constant is used
> > I think you are suggesting that I should replace hard-coded values like the
> > buffer size with named constants. For example:
> > 
> > #define BUF_SIZE 8
> > unsigned char buf[BUF_SIZE];
> 
> Yes, but the constant we need to look at here is bl_len.
> This is a variable needlessly.

The code in ms_scsi_read_capacity() is written that way to be consistent 
with the sd_scsi_read_capacity() routine.  Or maybe it was just 
copied-and-pasted, and then the variable's type was changed for no good 
reason.

Replacing the variable with a constant won't make much difference.  The 
compiler will realize that bl_len has a constant value and will generate 
appropriate code anyway.  I think just changing the type is a fine fix.

> > > 2. use the macros for converting endianness
> > Can I use macros like cpu_to_le32 for converting the bl_num and bl_len values.
> > Should I replace all instances of manual bitwise shifts with these macros?
> 
> Yes.
> 
> > For example:
> > 
> >      u32 bl_len = 0x200;
> >      buf[0] = cpu_to_le32(bl_num) >> 24;
> >      buf[4] = cpu_to_le32(bl_len) >> 24;
> > 
> > Is using cpu_to_le32 appropriate for the data format required by this
> > device?
> 
> Well, the format is big endian. So, cpu_to_be32() will be required.

Better yet, use put_unaligned_be32().  However, there's nothing really 
wrong with the code as it stands.  It doesn't need to be changed now.

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/804a6d40-73a4-4af6-944b-95e9324d7429%40rowland.harvard.edu.
