Return-Path: <usb-storage+bncBCUJ7YGL3QFBBMGH6LCAMGQE2K55G2I@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yb1-xb46.google.com (mail-yb1-xb46.google.com [IPv6:2607:f8b0:4864:20::b46])
	by mail.lfdr.de (Postfix) with ESMTPS id BC8C5B24C1D
	for <lists+usb-storage@lfdr.de>; Wed, 13 Aug 2025 16:39:46 +0200 (CEST)
Received: by mail-yb1-xb46.google.com with SMTP id 3f1490d57ef6-e905884720fsf5271980276.0
        for <lists+usb-storage@lfdr.de>; Wed, 13 Aug 2025 07:39:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1755095984; cv=pass;
        d=google.com; s=arc-20240605;
        b=Sdenko9+Er+KrRik+xcVFABWys1YdYs8LrCMn3Z2Gxv/+FDV3adsyL05L7vnAMbM4B
         fnBVFbpwVH/DyH7hCtJlG6+q3tkTA7VVywFSCvk6wICFJLz7BSuBc5+ttg/spsMkkhAG
         APPa4fqeJ/GnprvoifgQRg8LWJp32Z1NXqDXfGJ+/5ZIXH+denlPqZts0wNRNdeiSs4p
         JO3X08RFWyZ9G7c8k50lC8BjKHLCRhC452YhedeMR9R+rjRLZIQvLmGu0z3K7JwTCI+S
         vQqDOVQ/DAruvYeKG1rNWfmLU6Qs8AlWS0b8r4ifPCPs5tCxczz8uEWgtCnyv07+w4Nk
         bwWw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=n8rtn/r7f0pgenssIShnioXzXkFr3XrIIov7a4Pg0DM=;
        fh=KYi5bxGV3OntnvQUztdSR9bENBpA/KSU64Tpe//k3y8=;
        b=j9b+zDiVg6wviYezCkLScOeLH9Qpi1vUuUvFpBaxKniWYmjOYPifBMxLPorCQ1UHDD
         1/7qxL0GIKH0j8TFNJlPXzDIhOeNnbJf6oZCeJTB393XyfJ+bksIO48Hr2Jx1UzjhOC9
         kXXAwea7X+RAtsXgtqDTKmAr3do1NQMHn5pDKPFDLGZc9tqBNYrtNHAnZtkisbRoKd/f
         Vc2aNZVj5CSmfpqyA4UIXL8AIgtMrL5aiMckK2kFQifiAkLmTDAPKOqkz9GbB8bnraCm
         Eg880/IusDK9A3JGhIvqIbJk3UEpMB9XTwisKO6a3xWSsCVOeD6CmRRP9WjY46UJaUCM
         KX0w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b="Qm6K/qJP";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1755095984; x=1755700784; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=n8rtn/r7f0pgenssIShnioXzXkFr3XrIIov7a4Pg0DM=;
        b=Wip8OAcsLWBjr9yWFJYb6wMoG5l5JVA8GdA6AeTlP3zCYd4YycDucpqg+jmD5IDfpH
         QEeQMofy/Ofx9TBaFxFD5aTn6YDvWBTUWl2Bsn6dqJVtTDn2yysFpQt2YWdVoe9rhpv/
         xhWXgGJO6t/PnYcodJSpRTW9N8VG0OY6nMpgQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755095984; x=1755700784;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=n8rtn/r7f0pgenssIShnioXzXkFr3XrIIov7a4Pg0DM=;
        b=NS3/ZRjS0PS3bVPf9lOvUnw5367AP08LGIFi7HdQmf60Y8ZyIAaK1vp6VnL+5BS/jQ
         imp1NuhIRBk+YQqU2bzEAKdBvbFGVPlqLDx1VDO+BNR0sOVoDjnLmV5ame22t9UQz6x7
         gFYg8wWpSN+KK5DMe4Xhwez4o+HBgn7RtHgsdD71Q5W+aaNFnHWmeUrFpaE+Gjoj26S+
         KzLP9V7Er2pU1+q+5jUp0lyPR2fZuXsvucNztG9Zmuy3w3eIQQfXKylIvvUmZ1lpfFlQ
         HCCOjDptRC9U21HcPUmCaiDRPwTCzGAL0xOxYglNc1dC5T1NjZgC7vKnNIR+sAqM1pro
         guqg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVBQQuDr6VWmY3AdmhLUrtaN+IV8EI00aUpaH+9CX1wB895kB3ZMTv0AG716w2nOQ4wzWUekw==@lfdr.de
X-Gm-Message-State: AOJu0YytQGBeHXJ+9Yx7ztIXR3nx0Jp+PiIRwqMnLhC0t+cD92QfnyS+
	E/ULIxcT8dkBzOAokY7/JPdOrJINad0ukx1hN/jzcxgciZvPIqVI4PMoe+j1quDqq2g=
X-Google-Smtp-Source: AGHT+IHDe+n41uTwgBREUvrclAYBt+DxadGwXo3OVkLRtSXwkfeYMX79Qe1aBc4cEtZFIjc3pXdHGQ==
X-Received: by 2002:a05:6902:6186:b0:e90:6e73:21f0 with SMTP id 3f1490d57ef6-e930c04b58bmr3962344276.32.1755095984212;
        Wed, 13 Aug 2025 07:39:44 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AZMbMZdLaOnfqDxgNEdZ6hkzfLiaf8Rliu2pz6Zvk8y1knaGrw==
Received: by 2002:a25:e049:0:b0:e93:f92:bba9 with SMTP id 3f1490d57ef6-e930f92bdacls586531276.0.-pod-prod-09-us;
 Wed, 13 Aug 2025 07:39:43 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCV9nqq0MrnuTiGV93r9S5+UeuhWTF8HYBsTWiKsOMXufOD1LVwzp22wrio1VF+r10JHP4glUu+19FUiUg==@lists.one-eyed-alien.net
X-Received: by 2002:a05:690c:6f93:b0:71a:10e8:1f5c with SMTP id 00721157ae682-71d4e52cb48mr36967977b3.19.1755095983193;
        Wed, 13 Aug 2025 07:39:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1755095983; cv=none;
        d=google.com; s=arc-20240605;
        b=k5pq3geNN4LYN04qHQQJFKqeeEFciksrMp0l8qqGydLDqlFlhUlRu9zdgBgk5M6aLI
         VNQFe7OhK/G8b0xzhqmkadTwNl1UPgBEPSno0wiRwRSrpH5PN2TRHlsJtMsPpPupX9YD
         cGcLLojlTBWmeFYgiXvKR2Fai/JziYEwjIuXDRJppJvVYQb9YEPz8Tlya47DYDaPZH2b
         0qwdlfxoyPL9xeMdY2gPE3u8kCIY4p/HRhCbI99aZ5owoeHMrutOAJWA43Bm+qT2SXXe
         vEaZVOSCOEuDBurPaUO1JWnbl2hALEYVebzWkX62xKmoO76p3xPXD/bydj9ikSCdTs1q
         AcVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=nWro2qXGFYdQradPINEYEIZhinINM8lshDtuf1clsek=;
        fh=h0NZTuFg5jd2eJbjvlHi2LWPFuCHyJhk0NpNxB8hhyo=;
        b=hCsfLKUYkuJXd4y/ocvr3iSrWih5AmxFJXUuLuSWOALKWJ0HPy3/Qav7OoSkcPjALY
         MTGBfpOGfme0ajkwPFpbyVfmftcUWsdyWEBH98GyTktbS74eQggMYeltIkjkGzYWvi+d
         EtQ6mHnV8ZeS5LD01/8TTwOD4T8c1CzV2cYlP/u7UrweMM/O9foSrX0KIx4Tl+ijC5Xe
         wsnI6H4pgYC6bcREuxUvcQgYvzGvYrKDjHOp4L5VvQyJR1xUvfttMwFJ0zKoWKxjTFP5
         USg2Ni5WopBGTboUUh5VH/BmtfgqK4WxOXlnXNIGuNpN3cdohpmTKCVPmrBRt0kQjadW
         Deig==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b="Qm6K/qJP";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from tor.source.kernel.org (tor.source.kernel.org. [172.105.4.254])
        by mx.google.com with ESMTPS id 00721157ae682-71b5a6319afsi173475837b3.514.2025.08.13.07.39.43
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Aug 2025 07:39:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 172.105.4.254 as permitted sender) client-ip=172.105.4.254;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 86857601F5;
	Wed, 13 Aug 2025 14:39:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C04CAC4CEEB;
	Wed, 13 Aug 2025 14:39:41 +0000 (UTC)
Date: Wed, 13 Aug 2025 16:39:39 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Thorsten Blum <thorsten.blum@linux.dev>
Cc: Alan Stern <stern@rowland.harvard.edu>, wwang <wei_wang@realsil.com.cn>,
	stable@vger.kernel.org, Greg Kroah-Hartman <gregkh@suse.de>,
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: [PATCH 3/3] usb: storage: realtek_cr: Use correct
 byte order for bcs->Residue
Message-ID: <2025081358-posted-ritzy-bd3f@gregkh>
References: <20250813101249.158270-2-thorsten.blum@linux.dev>
 <20250813101249.158270-6-thorsten.blum@linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20250813101249.158270-6-thorsten.blum@linux.dev>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b="Qm6K/qJP";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates
 172.105.4.254 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
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

On Wed, Aug 13, 2025 at 12:12:51PM +0200, Thorsten Blum wrote:
> Since 'bcs->Residue' has the data type '__le32', we must convert it to
> the correct byte order of the CPU using this driver when assigning it to
> the local variable 'residue'.
> 
> Cc: stable@vger.kernel.org

When you have a bugfix, don't put it last in the patch series, as that
doesn't make much sense if you want to backport it anywhere, like you
are asking to do here.

Please just send this as a separate patch, and do the cleanups in a
different series.

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/2025081358-posted-ritzy-bd3f%40gregkh.
