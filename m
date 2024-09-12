Return-Path: <usb-storage+bncBCUJ7YGL3QFBB2XNRG3QMGQEXZERXVI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oa1-x48.google.com (mail-oa1-x48.google.com [IPv6:2001:4860:4864:20::48])
	by mail.lfdr.de (Postfix) with ESMTPS id BB6F6976039
	for <lists+usb-storage@lfdr.de>; Thu, 12 Sep 2024 07:06:52 +0200 (CEST)
Received: by mail-oa1-x48.google.com with SMTP id 586e51a60fabf-2781e30e1e8sf496213fac.2
        for <lists+usb-storage@lfdr.de>; Wed, 11 Sep 2024 22:06:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1726117611; cv=pass;
        d=google.com; s=arc-20240605;
        b=DLDO8CiN+H/0oAxfsZNn5XcdCdSAKj6B4blkYAA6o3mqyLRiJpcMW2bFg/LMUbUFeu
         K+9a7nGEfYpRq/qjfeRUEoeRuAiQ1UarQ1UleZsRVrjsaUB/UAqVrNx0SmXw6NGv8E2L
         Pic3z3FiwQ2UqMC9NJFNnkzGpKEllIh0/0XAx72jJjZ6KgmaxHat4embpZsh6lgQv/4Z
         70xpMY/O+XA7STDWTlD6SRcXvjFXLsFfkFANZbzxOiALG1mgSv8EDbSxy5K5iAZvvL5f
         EqnUz1IJaggjIbJnm4WVtJi4Vu4uFGUsdPCJ0p3WHT10GZnnhWBE6HfBgLMzsntsJZJl
         qrkQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=95nKWEdJnSz2wWlLy/fpt7NSgdO8fzddrdFPnmI5l0w=;
        fh=6yr/6Z/+0l3RNSZNIQ2a9Ml1rL2zOxoHUr12IOV1aiQ=;
        b=HHc3n63Gce8Ddf9U+FZwWCmtMHiwK9LfdCHdDnz+49qtEtnWJ23KeF28OPG14tq17e
         oeDQEKhHtSx4RihfQQtpBWzWyThpRuHT3+2Mg8m2fjZqk/3+MSGBfhqHBhr2iCrlBfH9
         ZbGY7m5df7aDjC0+ZvVpZf7W/muExU5VLuYwxIYuKuQzc19Y+VIq+dzF414q7wO3B3++
         uy23Mq2FsDL3k2ThrzsBOvMZDTmtTCpFHmMDEFXvjZIx0PyhM2xXAgD1qijRDha45guZ
         S/DZHKsXz2+p0/hjZjZolEs6uKe6+Q0CAFSElAbSVHwy7tYC5mNiQkTIRExCQ2v5dAAJ
         mlEQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=a7opEU62;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1726117611; x=1726722411; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=95nKWEdJnSz2wWlLy/fpt7NSgdO8fzddrdFPnmI5l0w=;
        b=MD/d4mpfAfpFpiPew+dssNYMBy1DEqgw1ur8qO6iUUiDnPvxm6WhXDP35AV4QEXlhT
         3sSQ5VIkWqJSC8EOl39ECZ/4H1GunRvzMMZmDRp2R1t6wzMbjFZWyy4RsShsuJw81AdU
         8WDP8HMIGQjp8CqFM6eZT3SV5nYyDmnQrLa2w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726117611; x=1726722411;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=95nKWEdJnSz2wWlLy/fpt7NSgdO8fzddrdFPnmI5l0w=;
        b=QBa3wjU/3WPsGw75mAkcB+Kv9GuV6BhdYt0f3PGsa8HKhfOGvkRcDV78ztAdsV+4YY
         gc+KCXZx8IuOAHjWHADgux2vFh1L7sOMu4J2q9fSjV1UBuLr8VGucblH0yL7lBc6OmOy
         HMgUKVjtqILMuIhg6Zf5zI2J1Bo0v5Vs6spUv3HyBz2zEvtoEuRg6WvNItPMLmdw/cTc
         jNTGgFCiPw/LngQzsNYj0lU4DWcFhozvSXQ9h0mR+u8QztmoVTc0+U9Sxt8wB4aa0MKG
         9oINI7RfuDsBCo61zYNbUekXJjuelrgT0OlVid9HjU4HJaQXWtr72Q4qxxVvMksR3QIH
         96hw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWX1gvtsCYm3D7lhYEz8soVOKVX9veWirAaHfQZAUgBD7L3Vd/r6j059tUqF+nCiKgJestXqA==@lfdr.de
X-Gm-Message-State: AOJu0Yza1eSyfaXgirK30s5ZGKMiDyEevDNaym4xXz+2jsWnE8TeN4aZ
	0p8Hl4wK9gJkn2ML7Znxb4w83s0O0m8XZxZFVtBSBuxkvakNTHbLVZA0kab1wBo=
X-Google-Smtp-Source: AGHT+IFpUUoUZrkqnpptU6RfnJPR3AzXZ/Qu4XEMLMQW0P0tdpkxr6bKFz+cOmK/RY7ioBbtEDKozQ==
X-Received: by 2002:a05:6870:c14c:b0:277:d9f6:26f6 with SMTP id 586e51a60fabf-27c3f25341dmr1094447fac.12.1726117611056;
        Wed, 11 Sep 2024 22:06:51 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6870:3b11:b0:277:ef03:8cc7 with SMTP id
 586e51a60fabf-27c3aea9af0ls453186fac.1.-pod-prod-08-us; Wed, 11 Sep 2024
 22:06:50 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVFLL7v/tk/OGDGzVhqZ2RUWhTnhZsBVeAg/p5q1tOn/xFOqet4wa7s5Aomt9Za1YdCWACEtULiwe9oPw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6870:d181:b0:268:880c:9de3 with SMTP id 586e51a60fabf-27c3f255fa5mr1128859fac.14.1726117610106;
        Wed, 11 Sep 2024 22:06:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1726117610; cv=none;
        d=google.com; s=arc-20240605;
        b=EPxbusVRNEidP4dHe29jzg/5pc2NGn3lRtiNrn/4lIiSgcN2vXYOwiTjSGpyeInuHH
         Yh6S/STuQVfZyEprWdb8RA1GVQF8AT4H8HXQWLsl2oZOz5uRHplLXA5YYOx61ZmrolmK
         rNPOpbeh2zIZP98kI6X8O4639B/j4z/6s9gmGa/qg2dcT8vVpoOcxLBTEd/guJcp5KhI
         u8EIkVOBG7t97uxH0QWX8SeGgIZU3wGmvDHeSS/VoKzV0DeJYNgfHJdkV1j+4l8oEeQ3
         O3G7VLVnEwDZOD+aX4/HvGt/QkvlJk+m2tZuQepOSBALWBIJFWpHsB+KB1dO2zRWhT0z
         b/kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=1vyjvOnLt//dBeXjniP6JTqy8pb4tR12yeG0nebCORo=;
        fh=1om0LnbX6PlNiwSh5r9mR7XdfHAFo41KhwHLgL2TS6w=;
        b=Un4IhSke6oBcyLYQJRNQSuCoeWru8+G3Q6Vn/COVr6+8IHpfAslTs+KkypHhVzLfRX
         9l8k+vcEDLcvis04LszuHcUu8zOYE8WjAXK3OgiwOcKxJ0qyAlrxlhv4v/j3bPm5zt96
         I30rWt6sklnTe/0t31lWKgPFY9AzR9GczVkFhdlYxLV1/m7/SBFpLsFEXi6F/Q55Zw5C
         EUhkBmtbp7NXaz4ytQ/mEVmOzJT6o/bVmTW2YI7dlcpFG/zgEfSmHfs3oIOPFidBRD2s
         xbCXUXqb9nDozguVFtP/qaclPzhK8tJ2rCgthxogP/+/sOsmGYaYRKdQ0C1zNu8dXxUC
         o/xg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=a7opEU62;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [139.178.84.217])
        by mx.google.com with ESMTPS id 586e51a60fabf-27ba4104414si4669796fac.227.2024.09.11.22.06.49
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Sep 2024 22:06:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) client-ip=139.178.84.217;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 24CCA5C53FA;
	Thu, 12 Sep 2024 05:06:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E54B9C4CEC3;
	Thu, 12 Sep 2024 05:06:48 +0000 (UTC)
Date: Thu, 12 Sep 2024 07:06:45 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Abhishek Tamboli <abhishektamboli9@gmail.com>
Cc: Alan Stern <stern@rowland.harvard.edu>,
	usb-storage@lists.one-eyed-alien.net, linux-usb@vger.kernel.org,
	skhan@linuxfoundation.org, dan.carpenter@linaro.org,
	rbmarliere@gmail.com,
	linux-kernel-mentees@lists.linuxfoundation.org,
	linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: [PATCH] usb: storage: ene_ub6250: Fix right shift warnings
Message-ID: <2024091228-bootie-name-4867@gregkh>
References: <20240729182348.451436-1-abhishektamboli9@gmail.com>
 <e72cc56a-3066-4cb8-848d-bfe27a48c095@suse.com>
 <ZqkpOQIjcBSAg8rC@embed-PC.myguest.virtualbox.org>
 <5d7870b0-6b63-430b-8885-2509b33dc78a@suse.com>
 <804a6d40-73a4-4af6-944b-95e9324d7429@rowland.harvard.edu>
 <Zqp8vbbIC8E/XrQY@embed-PC.myguest.virtualbox.org>
 <b35a344a-018b-44ae-975a-7767a3d5b6ec@rowland.harvard.edu>
 <f5d4711f-9b4a-457c-b68c-c2e9aefbe4a8@suse.com>
 <890e0ed1-25c3-414e-9e8e-f5925fe8c778@rowland.harvard.edu>
 <ZuI5nptdk+BcXh+R@embed-PC.myguest.virtualbox.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <ZuI5nptdk+BcXh+R@embed-PC.myguest.virtualbox.org>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=a7opEU62;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217
 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
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

On Thu, Sep 12, 2024 at 06:15:18AM +0530, Abhishek Tamboli wrote:
> Hi Alan,
> On Thu, Aug 01, 2024 at 10:51:35AM -0400, Alan Stern wrote:
> > On Thu, Aug 01, 2024 at 08:54:18AM +0200, 'Oliver Neukum' via USB Mass Storage on Linux wrote:
> > > 
> > > 
> > > On 31.07.24 20:19, Alan Stern wrote:
> > > > On Wed, Jul 31, 2024 at 11:34:45PM +0530, Abhishek Tamboli wrote:
> > > > > On Wed, Jul 31, 2024 at 10:04:33AM -0400, Alan Stern wrote:
> > > 
> > > Hi,
> > > 
> > > I should make my reasoning clearer.
> > > 
> > > > > > Replacing the variable with a constant won't make much difference.  The
> > > > > > compiler will realize that bl_len has a constant value and will generate
> > > > > > appropriate code anyway.  I think just changing the type is a fine fix.
> > > 
> > > While that is absolutely true, it kind of removes the reason for the patch
> > > in the first place. The code gcc generates is unlikely to be changed.
> > > 
> > > We are reacting to a warning an automatic tool generates. That is a good thing.
> > > We should have clean code. The question is how we react to such a report.
> > > It just seems to me that if we fix such a warning, the code should really be clean
> > > after that. Just doing the minimum that will make the checker shut up is
> > > no good.
> > 
> > With this fix, the code seems clean to me.  It may not be as short as 
> > possible, but it's clean.
> 
> I noticed that the patch has not yet been pulled into linux-next, 
> even though it has been acked-by you for over a month. Is there 
> anything else I need to do on my end?

Yes, please resend it, it is long gone from my review queue, sorry.

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/2024091228-bootie-name-4867%40gregkh.
