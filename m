Return-Path: <usb-storage+bncBCFZHPHU3ENBBR77RO3QMGQE34SAIOY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x547.google.com (mail-pg1-x547.google.com [IPv6:2607:f8b0:4864:20::547])
	by mail.lfdr.de (Postfix) with ESMTPS id C6382976CA7
	for <lists+usb-storage@lfdr.de>; Thu, 12 Sep 2024 16:50:49 +0200 (CEST)
Received: by mail-pg1-x547.google.com with SMTP id 41be03b00d2f7-7c6b192a39bsf979272a12.2
        for <lists+usb-storage@lfdr.de>; Thu, 12 Sep 2024 07:50:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1726152648; cv=pass;
        d=google.com; s=arc-20240605;
        b=EGpwoLxWIEZSu2nfiXZrXj+9LwgN8t5jYQiPYdhjlELfCi8ZroWMeQxXjYV6UYQCuJ
         uRULKp5cRmDJ394UCphHb6h+SspWecrx4zi5sP3Cw/pFVPOEqP22YAcZDNaFh1+QYEU6
         VCD/1djS+IxNo5ttWaiVu8ZvFXsTAMoINiRHajoHKkElQCzINnbpv40gejBUxanStq6v
         EQfaLeEcGBsyvC3GLDW6QfXw2YeDFKk16HY1T8uNwtPrQOVzb3CoKS9rXQH3pHdMyRel
         XqFgj3pCtG3aBF09moUX0OxpmeWoT5oLcyh5oE9QzfniX31sJbpx7j/XjK8RyivjWrE5
         rEtA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=q1UY/E+QXphu4JgVX7+sHCJfVB8VzPm9HFAL3rA5FFs=;
        fh=z9CQX+/pAqxFkK4Sv+PAL5gI4A/MBpb4ZYgT/MZ/0Ro=;
        b=EVDkFPQA33bn+LpkNOsPuglObO1ASDemqfY+JXOc1zYGXZ2XKUyXVpb3Ogxk7ovqx/
         dal7cWZIjy+4fi/9jpjTCHBQDwYVXROiU5AoUpwanc3x0US0x/qcRT363LyagU4+mhJ0
         J591n+SVTta8oD0/AnkVVGjHTcdpvm/SFZwXaXpXmdKcI6u5Yz+5ctPuGqxHUdep92V7
         LBMQ4+TpVxTbPuN59bXdtGXFDJy3mDSTpwzuJCZDkqR5SKEfJT6vncR2MMxvnDH6dvXR
         uFxMtXwpjiTW0fT9cPXJJRN0lsI/7aUaAqm0FwiY5sTjxiEr1g8KpXpTEGU026zpBkZw
         /c6w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=cYQ2JVQC;
       spf=pass (google.com: domain of abhishektamboli9@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=abhishektamboli9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
       dara=pass header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1726152648; x=1726757448; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=q1UY/E+QXphu4JgVX7+sHCJfVB8VzPm9HFAL3rA5FFs=;
        b=Unrc9G8sCTStY8Cm/07qxQCO8+VeXWXjK0x2utWVYdTR+HKgd95O0FFA2iMEEmAXxy
         9wDSsxQTPsShJ+Omi0hXTSeoNOqJTSdG6PBC0h0aViBOdGX+xL1bbOQKwo6AFkM/xx9I
         7eJYgHETCO1jAF6Eu9Pz/pzGSH49Dy5oXOw/Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726152648; x=1726757448;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=q1UY/E+QXphu4JgVX7+sHCJfVB8VzPm9HFAL3rA5FFs=;
        b=jPCgNoS0AiuYr27s2PpXJ3WugqXeTSW2lO9e7EKiHvqeennpSx24DdWSB2KDYN/ASv
         GQGRSL2IlptU4RDWnMhNbp0EZnGDuudETlWlDqhHLHU2Fuy5L48FtAp651tI4r/CY1DC
         6BsH9z85asF3MjBOTT0A1M6fiAk76B4apj4vmrq68CWL+uK8n0LtS5y4lRfMNDh7MbSh
         VuWqpJ8jSVO9Bx/hEq5xHY/kBBg3KMhl9k+fmRoNDj5Vfwr+ZCMvNDbrujhJvtqQvAQg
         zoL62385kZYRhdtzvdbVUIn5DFXF5FjPyBjClo28PGc9MXZV8nf3wUBgm0eNMdoXSL7y
         6CZA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXhqKnOtbES45KiPf6Uk3190nhgdvNcsDXayaP1blVi7vYf12bdfe0PNhj1YhZbMVR3e8cL8Q==@lfdr.de
X-Gm-Message-State: AOJu0Yx3GO12jg1aQF1Kfm9ZzajkTQs/4Km9apm/iYFKipZu4I59FJb6
	QB3yTWR1k/lC2TVqPrMnkVnDTlF4zcXB9I17wXFrczCT3cAlvlJE0LXf2Me7IEY=
X-Google-Smtp-Source: AGHT+IHMah9CC/+mw7kV+egiSLy7rJVP7VSIfjC8JUEiWK9joqde4pBVEu/QtIjNyfl0DIP5rU17fA==
X-Received: by 2002:a17:902:e5c5:b0:1fc:6cf5:df4b with SMTP id d9443c01a7336-2076e428114mr42490005ad.49.1726152647828;
        Thu, 12 Sep 2024 07:50:47 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:903:2307:b0:206:9347:a4f with SMTP id
 d9443c01a7336-2076cad946bls9010885ad.1.-pod-prod-02-us; Thu, 12 Sep 2024
 07:50:46 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXDfzfop1Y9aWAmT/VqkqkkD7P/9VmsHjWF0mmPIKvPKMTXs25UzRqcnM9HGc+mL+VIEAUs/JV1uxu9kg==@lists.one-eyed-alien.net
X-Received: by 2002:a17:902:ec85:b0:205:627c:8001 with SMTP id d9443c01a7336-2076e3155c8mr45056985ad.5.1726152646461;
        Thu, 12 Sep 2024 07:50:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1726152646; cv=none;
        d=google.com; s=arc-20160816;
        b=IxS6o+WEVD6wwL2zOswuQNeA0J9Sn9kRx5TAuCpsnjkOIzqkPty7nxiK30+SYghD4I
         42HTFo4M0Ir9XOwF5yLFkhfh29C5aojCWbWUbXci4i47G/Q40FuuetMqrrD4ajQCMUuM
         yiHmpF+cozdDaHK6V2s57O5k+7xf1N1lm/p6P5GVLJbcEBvyb1KJ8lwnhSMpfpSaAfkC
         tGPwnP+4VTJRyLuDqp2DyUte44cmNe5mZ1Vj7EuP8/wGj0qd/GXkJrtoQv22KCpeCVle
         xBamZwScneUukDLcy7euXfQOx7rCTOcO/p5Am+SripOMGC93UpFhfuNtdANxEG4PTuyG
         buDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=L/1O0y+ZcovBucCacZFimGopfgJW1W3kqGSazoLLM6M=;
        fh=2bh/xmOFb7KwUkuYzegh6s9yFGQ/JaC08zXfmtbvfjU=;
        b=PmRvnF9FhbqsFbXk9NuQh8Xwf0h483YINc8p7Zi36JhyINEt+S06FSSaMHX5PtKE5e
         gZtvykKKgE+6dqkDqqk3IkLx5jRld7cDJggTvHft5aoX2Q4UKasPHcJLa0d3i6SRTv98
         q8HfbPv03szvzoPWMD3WBjnUfT4QxUfn1bJBMCbHzoGX66KdB4B8bXaIS5u2MhYzWVjS
         Upmlz953xxJrhVo9Pm7+81mTOt5NKEHIW8/CGNrz2xMNa1iQEdV6omJ6+6GjjGgi/4Gq
         X4pWABitIfxjdFYCfWwVmin5Ncrh3JUlxeM+4isPfrGsUH1AQVLyZQAyYwzQUPr6WYgY
         Qs4A==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=cYQ2JVQC;
       spf=pass (google.com: domain of abhishektamboli9@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=abhishektamboli9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id d9443c01a7336-20710ec4d04sor61484805ad.12.2024.09.12.07.50.46
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Thu, 12 Sep 2024 07:50:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of abhishektamboli9@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCUZETNTluTzNr0JyKrP8mLRnhkvQnHyLlY27DT/TVnQTnXx+RnfRBQ+m1iFqDmtyTsfvbR0YW4n4vdYWA==@lists.one-eyed-alien.net
X-Received: by 2002:a17:90a:9308:b0:2da:d766:1925 with SMTP id 98e67ed59e1d1-2dba007f632mr3535363a91.37.1726152645657;
        Thu, 12 Sep 2024 07:50:45 -0700 (PDT)
Received: from embed-PC.myguest.virtualbox.org ([106.222.232.184])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2dadc040397sm12678925a91.25.2024.09.12.07.50.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Sep 2024 07:50:44 -0700 (PDT)
Date: Thu, 12 Sep 2024 20:20:34 +0530
From: Abhishek Tamboli <abhishektamboli9@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: stern@rowland.harvard.edu, usb-storage@lists.one-eyed-alien.net,
	linux-usb@vger.kernel.org, skhan@linuxfoundation.org,
	dan.carpenter@linaro.org, rbmarliere@gmail.com,
	linux-kernel-mentees@lists.linuxfoundation.org,
	linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: [PATCH] usb: storage: ene_ub6250: Fix right shift warnings
Message-ID: <ZuL/um0Pcm8o3Gox@embed-PC.myguest.virtualbox.org>
References: <e72cc56a-3066-4cb8-848d-bfe27a48c095@suse.com>
 <ZqkpOQIjcBSAg8rC@embed-PC.myguest.virtualbox.org>
 <5d7870b0-6b63-430b-8885-2509b33dc78a@suse.com>
 <804a6d40-73a4-4af6-944b-95e9324d7429@rowland.harvard.edu>
 <Zqp8vbbIC8E/XrQY@embed-PC.myguest.virtualbox.org>
 <b35a344a-018b-44ae-975a-7767a3d5b6ec@rowland.harvard.edu>
 <f5d4711f-9b4a-457c-b68c-c2e9aefbe4a8@suse.com>
 <890e0ed1-25c3-414e-9e8e-f5925fe8c778@rowland.harvard.edu>
 <ZuI5nptdk+BcXh+R@embed-PC.myguest.virtualbox.org>
 <2024091228-bootie-name-4867@gregkh>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <2024091228-bootie-name-4867@gregkh>
X-Original-Sender: abhishektamboli9@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=cYQ2JVQC;       spf=pass
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

On Thu, Sep 12, 2024 at 07:06:45AM +0200, Greg KH wrote:
> On Thu, Sep 12, 2024 at 06:15:18AM +0530, Abhishek Tamboli wrote:
> > Hi Alan,
> > On Thu, Aug 01, 2024 at 10:51:35AM -0400, Alan Stern wrote:
> > > On Thu, Aug 01, 2024 at 08:54:18AM +0200, 'Oliver Neukum' via USB Mass Storage on Linux wrote:
> > > > 
> > > > 
> > > > On 31.07.24 20:19, Alan Stern wrote:
> > > > > On Wed, Jul 31, 2024 at 11:34:45PM +0530, Abhishek Tamboli wrote:
> > > > > > On Wed, Jul 31, 2024 at 10:04:33AM -0400, Alan Stern wrote:
> > > > 
> > > > Hi,
> > > > 
> > > > I should make my reasoning clearer.
> > > > 
> > > > > > > Replacing the variable with a constant won't make much difference.  The
> > > > > > > compiler will realize that bl_len has a constant value and will generate
> > > > > > > appropriate code anyway.  I think just changing the type is a fine fix.
> > > > 
> > > > While that is absolutely true, it kind of removes the reason for the patch
> > > > in the first place. The code gcc generates is unlikely to be changed.
> > > > 
> > > > We are reacting to a warning an automatic tool generates. That is a good thing.
> > > > We should have clean code. The question is how we react to such a report.
> > > > It just seems to me that if we fix such a warning, the code should really be clean
> > > > after that. Just doing the minimum that will make the checker shut up is
> > > > no good.
> > > 
> > > With this fix, the code seems clean to me.  It may not be as short as 
> > > possible, but it's clean.
> > 
> > I noticed that the patch has not yet been pulled into linux-next, 
> > even though it has been acked-by you for over a month. Is there 
> > anything else I need to do on my end?
> 
> Yes, please resend it, it is long gone from my review queue, sorry.
No problem, I will resend it.

Thanks,
Abhishek

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/ZuL/um0Pcm8o3Gox%40embed-PC.myguest.virtualbox.org.
