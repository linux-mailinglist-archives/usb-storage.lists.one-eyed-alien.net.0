Return-Path: <usb-storage+bncBCFZHPHU3ENBBJ7TRC3QMGQEJJPRHXQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1047.google.com (mail-pj1-x1047.google.com [IPv6:2607:f8b0:4864:20::1047])
	by mail.lfdr.de (Postfix) with ESMTPS id C2213975E0F
	for <lists+usb-storage@lfdr.de>; Thu, 12 Sep 2024 02:45:29 +0200 (CEST)
Received: by mail-pj1-x1047.google.com with SMTP id 98e67ed59e1d1-2db470aa646sf454557a91.3
        for <lists+usb-storage@lfdr.de>; Wed, 11 Sep 2024 17:45:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1726101928; cv=pass;
        d=google.com; s=arc-20240605;
        b=Dbi264bSY3jQt2A+H7DiqwHhXM5+8yammrzO5tfPerV73AN6rEaG8bsvQOBNgjdaP4
         1ak5i5fKlPZdQ95VcesIZPVZWVK3tsaTTpO5Lcv6RFpIxbjip1O4ytD9QrS+rrONbkBd
         /CnZEgmc6F5E4AK+SPssORXjqvgakJe2XEgLyg7SNYZh6J0rpfLcUirQk0jt328eQY4C
         fLx+XrrDgOFi11NC/pcmJt4Ea0EVyEJEZaCwudJ4bl1LZHwa0ANpwvN0FTPiIhJhoS9r
         8AYOIY120/tHBPxQow+jOuUqU1fOXr5TuyUqm0pTRaB9nDMN3SIIY1P/cF8aX/SCSh3a
         iSxg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=klKAKFVDR9bZQKnaNJjivP5JXVoUlvlPVH+XAaytoK8=;
        fh=IQHz4v/zOLeAJjRHv0khVy/8w8r4kNbPAo99VIEk3GY=;
        b=H9WZNq2RrzHnKFciP98+/O0gUkFDTQJ3q+AToundXeQr+92Q+qMPWZqR0RKYQCbNtq
         9OW0QRMM+Yiq+Q7dI6LHCM9IOlVn4ru+0swRdEt0OdDdpluHJ1xn/q887L88y4zC/KWA
         /zC/1Sfns9e2FlY1jJgSub/tSRpYty4glx4EOI1TtU+x4liv6RCpnDuc5VkK77tJka/b
         i1YsdCo64LC29tmZoxaa/U9k4iyl9eUwTrT/zxUzE6huZn8LHCkprjMfoS2lo6XkwTQ7
         YXpN0DWE5AmdjxpnZugSGsziy+3KIAaS0HjCiei83BQL+wbNDD5U8ujU5ikbdZwYVnzb
         M7MA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=cHdKDlHO;
       spf=pass (google.com: domain of abhishektamboli9@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=abhishektamboli9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
       dara=pass header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1726101928; x=1726706728; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=klKAKFVDR9bZQKnaNJjivP5JXVoUlvlPVH+XAaytoK8=;
        b=cYLqTx7zdT+gOTHEQeKsUnYX2zVe6ebEv8GxFLA5bIDR3pdnVQfI2tknGYizyVEQ94
         ksRnz61bUaafuYpQLLlCRFS1OQ9Scg0T8uL1XFK6PtHdmM7quBUDb63wXUzOGd1sihKi
         1HEfSZI/GdgllWYrxZBGHNoGVTmOyOH7hgfmo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726101928; x=1726706728;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=klKAKFVDR9bZQKnaNJjivP5JXVoUlvlPVH+XAaytoK8=;
        b=bNlT+12nZxtDGtLGuz9q6vy3ATYV/6Mx/5djvwCI/tNrPjOcHl4zZgTMvkHWFiWA/L
         Kh4Qos9xuUryYc1c9ppA7xvRriwPj2pAtoURi7Zy9wlb+hurI1XC7+oGfPBXvyE2FRRf
         Vss12KRgPTfEBy9zKSw/5HBaJ5YjphfRxaRNK2KKLxbAdfHGcYNfvdc7663z+yO3PXdJ
         vKNWrmpuOVZeRQ3YVo7eKqh7p65NwXoyKk/F66UYN+JvDAzZefst/Kl+dsyrcEF9EzTu
         eZtJ7YIflrd2STnC75WzvusFFb36DZ15EUfB48Y41w6oR9XhrbCLKQ/0+CUEk/jDa9+z
         Imfg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCW6n/SnNF4oRJwDD9xKT2Wvfb8lD7G7govZ5fgK0aEc5CF20N4AimWd7e1HCaY2hV/fXiDlFw==@lfdr.de
X-Gm-Message-State: AOJu0YzLvIgDsKKIlqh2/qQl5AtuLvy99pgWvHB3IOSzgl0wqcGtTQjH
	MqGAhH2MSwkTOwyybdbMngenc3EuCtdObYEPQAfWfqF9nxrC0qibiemBsYmMuBw=
X-Google-Smtp-Source: AGHT+IFWGupCaPy63awBmELQVm62/+6FpZHg73VHZs95dGbHmRO4/hJNVK4+awnHvW6dGj0DtaBdqA==
X-Received: by 2002:a17:90a:8a8e:b0:2cf:c9ab:e740 with SMTP id 98e67ed59e1d1-2db9ffc208amr1156384a91.11.1726101927899;
        Wed, 11 Sep 2024 17:45:27 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:9103:b0:2c7:e17f:422b with SMTP id
 98e67ed59e1d1-2db9ed34fedls220160a91.0.-pod-prod-09-us; Wed, 11 Sep 2024
 17:45:26 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCW4QI23Kg6l9tT6rsHyybwXD1AORjlTjS8sRaf9tPniOXMcv0geXY2WhP+C71DGvlknJPI6DqVzel4yeg==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6a21:e8e:b0:1bd:2214:e92f with SMTP id adf61e73a8af0-1cf75eaeaedmr1371667637.14.1726101926390;
        Wed, 11 Sep 2024 17:45:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1726101926; cv=none;
        d=google.com; s=arc-20160816;
        b=xFl0+vp3bGN1J1Sj3pKpswrP/ErqWgv5a+LENFQf3o/tGlnSjQdBByJuVEUwigfNaI
         1DOHvy/VfWcdpYbHp4gI4BUNFjG9bHPUasVtSvs5q9O+RclNOZr+3Jr1oVKsIagHbGxt
         cX7uq/n/w1MS+GTmCUnACgaHHxmmBMQkY69d6Uv6YZgoOVO0KcoAwX1KDb+Yzssb9le8
         NPq6DBP0OLAWpODxqvPvLoYf9GMnJwSkkVM/DlHCYj/zj7FBTWSeeQityBdgDxfqQExz
         vbUX0/VgZA9ziZArM/xx8KfXlA1O7S2tL6kir8+B+HwJpAeLMuuN0GzIxC9IYguH96EM
         ZwpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=cXFeEE7MIL9Z9sVBfBbEtID4t2efTNAyYO/k4o/Sl5g=;
        fh=L+jZHPayS8yx9vRZjEjyeINYgIhAKrMX4SDSz+aMMLg=;
        b=hENZLWLckzZxG3HwmStpD47BNxFte/z9SH8kmicqez6/z3mlATUkj56ORbg3F7gXFP
         Q977RAn+IthnqPInBXE/E9FAL6Ljpgedq6C9c2fcrKJOfxiGJ6zX8fKfzf+N2H5yca5y
         ly/oQe8tobbpvCCEHvqF65PjtR8/6BnKB6Mo7OUHvwwaUu/e6I6iJgTKDsx+SCMo7/13
         usm1OsesjWojlyn1KW8EhtO8dEQ6fP9DlJlqh6zpnIYTaamRFEMh1DsmIAsMpPaVWD6r
         bYUjN4rL/PyGLlCHRgurYo5VG7Hcz6XwsyxB8GiZIPk/mJigqB3ZxSqaSIz0MMWUBWyp
         RLkg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=cHdKDlHO;
       spf=pass (google.com: domain of abhishektamboli9@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=abhishektamboli9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id d2e1a72fcca58-718e589c2acsor5633801b3a.2.2024.09.11.17.45.26
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 11 Sep 2024 17:45:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of abhishektamboli9@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCVWEMzi77MMRUUedaPci9/83p9ejV6GVNA1NI4iZnLUl31IUhhWaSgKzP5n8HPUb2xZOGwOQrdBzimvSw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6a21:1518:b0:1cf:39bd:bd61 with SMTP id adf61e73a8af0-1cf75ef29d3mr1140446637.23.1726101925872;
        Wed, 11 Sep 2024 17:45:25 -0700 (PDT)
Received: from embed-PC.myguest.virtualbox.org ([106.222.234.231])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7db1fe11ad7sm560045a12.94.2024.09.11.17.45.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Sep 2024 17:45:25 -0700 (PDT)
Date: Thu, 12 Sep 2024 06:15:18 +0530
From: Abhishek Tamboli <abhishektamboli9@gmail.com>
To: Alan Stern <stern@rowland.harvard.edu>
Cc: gregkh@linuxfoundation.org, usb-storage@lists.one-eyed-alien.net,
	linux-usb@vger.kernel.org, skhan@linuxfoundation.org,
	dan.carpenter@linaro.org, rbmarliere@gmail.com,
	linux-kernel-mentees@lists.linuxfoundation.org,
	linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: [PATCH] usb: storage: ene_ub6250: Fix right shift warnings
Message-ID: <ZuI5nptdk+BcXh+R@embed-PC.myguest.virtualbox.org>
References: <20240729182348.451436-1-abhishektamboli9@gmail.com>
 <e72cc56a-3066-4cb8-848d-bfe27a48c095@suse.com>
 <ZqkpOQIjcBSAg8rC@embed-PC.myguest.virtualbox.org>
 <5d7870b0-6b63-430b-8885-2509b33dc78a@suse.com>
 <804a6d40-73a4-4af6-944b-95e9324d7429@rowland.harvard.edu>
 <Zqp8vbbIC8E/XrQY@embed-PC.myguest.virtualbox.org>
 <b35a344a-018b-44ae-975a-7767a3d5b6ec@rowland.harvard.edu>
 <f5d4711f-9b4a-457c-b68c-c2e9aefbe4a8@suse.com>
 <890e0ed1-25c3-414e-9e8e-f5925fe8c778@rowland.harvard.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <890e0ed1-25c3-414e-9e8e-f5925fe8c778@rowland.harvard.edu>
X-Original-Sender: abhishektamboli9@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=cHdKDlHO;       spf=pass
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

Hi Alan,
On Thu, Aug 01, 2024 at 10:51:35AM -0400, Alan Stern wrote:
> On Thu, Aug 01, 2024 at 08:54:18AM +0200, 'Oliver Neukum' via USB Mass Storage on Linux wrote:
> > 
> > 
> > On 31.07.24 20:19, Alan Stern wrote:
> > > On Wed, Jul 31, 2024 at 11:34:45PM +0530, Abhishek Tamboli wrote:
> > > > On Wed, Jul 31, 2024 at 10:04:33AM -0400, Alan Stern wrote:
> > 
> > Hi,
> > 
> > I should make my reasoning clearer.
> > 
> > > > > Replacing the variable with a constant won't make much difference.  The
> > > > > compiler will realize that bl_len has a constant value and will generate
> > > > > appropriate code anyway.  I think just changing the type is a fine fix.
> > 
> > While that is absolutely true, it kind of removes the reason for the patch
> > in the first place. The code gcc generates is unlikely to be changed.
> > 
> > We are reacting to a warning an automatic tool generates. That is a good thing.
> > We should have clean code. The question is how we react to such a report.
> > It just seems to me that if we fix such a warning, the code should really be clean
> > after that. Just doing the minimum that will make the checker shut up is
> > no good.
> 
> With this fix, the code seems clean to me.  It may not be as short as 
> possible, but it's clean.

I noticed that the patch has not yet been pulled into linux-next, 
even though it has been acked-by you for over a month. Is there 
anything else I need to do on my end?

Thank you for your attention to this matter.

Regards,
Abhishek

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/ZuI5nptdk%2BBcXh%2BR%40embed-PC.myguest.virtualbox.org.
