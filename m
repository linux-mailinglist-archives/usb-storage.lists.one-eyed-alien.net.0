Return-Path: <usb-storage+bncBCUJ7YGL3QFBB75N5XCAMGQEQG42PDQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x847.google.com (mail-qt1-x847.google.com [IPv6:2607:f8b0:4864:20::847])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F9E0B22B40
	for <lists+usb-storage@lfdr.de>; Tue, 12 Aug 2025 17:00:17 +0200 (CEST)
Received: by mail-qt1-x847.google.com with SMTP id d75a77b69052e-4b0938f0dabsf15438601cf.1
        for <lists+usb-storage@lfdr.de>; Tue, 12 Aug 2025 08:00:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1755010816; cv=pass;
        d=google.com; s=arc-20240605;
        b=QgFu1assqk/yfv79oLvUKnuOlB4ZqbRePz2j6ihYrehoe1n3vy3sr0q4qo+b1Cs2UZ
         jC8KyF4ZoOim7AH1O/vvHyZVRP1mndBrus4XHbIJ58NOuSUzWUIoY5+lBHvLSxeeTOrA
         lhXArlRSbPdt1V87/dF2453F1VNFK1nNo1hyWgITWGqIV4euNun1DVrIpDWQQVENzmG6
         u8PdOgIYi7Qb3IjNv5ynjb1B1JGvRzr65DaVe1IAdbiaG4IP64C6Hs4S5cRjD6p6yMgl
         gayyevC9AS4esYqLPI6vv7AWm5zN8w8TsXRsSGR6N6h+wxTTd+Mvb/N5JnvL5tHB2swG
         1HIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=FFQFi/V6vbx2Aj7dZnpcYiItuk9ff7yO4TIuHTA5WtQ=;
        fh=kyAPy2TTNOk5gzHiTp2pxLYO8TfAoyugafjr/h25gJw=;
        b=QX1Gljr9p3aRmvFlS8xeUnQi3YSe3yM4wy5CD6F8SJm9HUi1w0JJjXOCrGm0qq1Vjf
         jKkWpeG8GLVb+ZfQSTe9thY6ylQCZwYF7oLxGEFmYvmZf6MaXoGKE+VJGDkGRDpNpsG0
         rOC/awmxR8WmwMaNkRhhTKCjmk8wodFllNX9EZDXC6IcuYYatXQxa3sDmG39FUMm6jF8
         La8NaMlVTPa6g3n+vhEqmL8tkw84DDBtwOiL+1Mkv8YNuOLecK+VvP6sCAa/oI6P/71J
         DjNDgnakbxZD9R7gbDutSdyMXC0EfISYqIWH45kBsm6QxC0vWC1fiGqNKdvzlUvAt+bN
         KZfg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=UhKaQEwi;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:45d1:ec00::3 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1755010816; x=1755615616; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FFQFi/V6vbx2Aj7dZnpcYiItuk9ff7yO4TIuHTA5WtQ=;
        b=hyl3E+iJdRjC3W9JTn4a32mqgPv4FAgKkjhtfT7q3LdqnZEleJbgfBmv0DKBuxgEIt
         sPQ0hyenXQDC7B4fsMiGbo1q36irrqc7HJrS3hGYN4pDtQR/DZ73hPDESZegiEahsmH3
         RwCIMRBXa3ECUPL9/tUL+XUcJMenVDlEFbAg8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755010816; x=1755615616;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FFQFi/V6vbx2Aj7dZnpcYiItuk9ff7yO4TIuHTA5WtQ=;
        b=mQgoZybXXwSO7qfcqTOTZyPcFgXHJZLtYAd992V42yGd/jmdjnABbcDlHKtwp0rV+E
         pHrxfVj9ho6obdOb4OqUAM2ClY6fy5ybpOzJU3mvGyoa9aBE5lNDBPXyK/iw5rvbQ9u+
         sp2KULYW9tR1HW1mu+Trr0i7C861JZlSd8TS/y8+NPqVEfyzMgYvBqT817rP94492Kl/
         6Ty6fLIxmqI4OocYK8KF3NYPou2xUvQrVoa8QUZNnCGBgRn4G//7f7Nu4SCLFAaFikND
         94WmTPSCg3mlnpmpcAYTx30AvjVJdmJtnzwQDgqLSQ9LdAqBQRI6mFep4bJchJ7K0n+5
         mEXw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCU9iLha7L/fWR/AXVkC+384tu2bF9Cf5Pa7K4xhpLTl4E8Ju43NqYuqdIAseH34p2rVOvpATA==@lfdr.de
X-Gm-Message-State: AOJu0YxIGBXjflbuZtJXvt8aHIGYwGWMOhI85siIq0oFfZH8RMvgcqt7
	qyv240Kp1aKwHH8Cu8RzcpvZzxjQg1X6stXZWX82ZEQuLNp1sRYmn8Yil/GkQF2p+GQ=
X-Google-Smtp-Source: AGHT+IFw85grjt3z/MPzz/VHoJE+sV/8GtESXwDiJz0TBAN32T1MW7tr7Q2IG2Jb92XVK5m/Hyg4kQ==
X-Received: by 2002:ac8:7d46:0:b0:4a9:71b9:188a with SMTP id d75a77b69052e-4b0f6018279mr9579591cf.6.1755010815976;
        Tue, 12 Aug 2025 08:00:15 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AZMbMZf+riUWXHwpCTc+Ra0dvSCvLlBmmF2Z7X4px6VYILjJ2Q==
Received: by 2002:ac8:5f49:0:b0:4b0:7448:c7e8 with SMTP id d75a77b69052e-4b0a0509820ls59288301cf.2.-pod-prod-00-us;
 Tue, 12 Aug 2025 08:00:15 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVrQx8a2KO0m7LMJkaMsv3ssOnS+VKtMQ8eG+Z/wfFpgH4ArG5ZD01LEZGPuYnowq/vqZc0jEMe5A+nAQ==@lists.one-eyed-alien.net
X-Received: by 2002:a05:620a:3184:b0:7d5:e374:e2bb with SMTP id af79cd13be357-7e858e611bfmr394622885a.27.1755010814918;
        Tue, 12 Aug 2025 08:00:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1755010814; cv=none;
        d=google.com; s=arc-20240605;
        b=MW2cgGPujG3ud3rHqYUK2+GfzBFdy+w2oxu1uy+Nw5n6EHRbHbsmtGwmgNnfzs2Snd
         IdrS08G3fV8fG5syZSiGDQwCSEd0k7WExS/buvRAYBmwoeBAGHy4g/3cxGB+jvPly1Db
         oJSL/jLohcLicNaDAcj0fVxd/hjXMQU5xY3NlaIoWgRFAORYbGuUIH8wuItbeSu5oClw
         dE9k2qgfS9hwI1+bVmvq/xEbxLg8AJeO/MA9GWBqUH0jkt06hFGflv50czXNjZI5QxvA
         +iUf2NHG3ipA5CiTqF/q0luqDi2QOkD5IBXbqAUdTG1xUEYLwK4Q++FbcALDJralT7rn
         /4eA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=pUALhgrNluegIqyUAcnAJVl54Ymu757ReiBw6ur3IuU=;
        fh=B1KjqRTUOKn+kvhtin2+g3OMksvyqw43OMRwPMLyCsc=;
        b=A8/ELz68cBPSvnlVY2oMUHoM+HTxypM6DgGqGS3df+6EMbYfN4bkn24We2dzfWSOVU
         ZjhL/QNOzX6vPcdXs/wuagcdz2VTOVrNVAo2PzizWTI4f5Qh5NdKTS+uGZSI3J6HZvJA
         u91QomvXKFTg5qYv11Q98WriQdt4xk1Cht2mI1rlNO5j5C2M+gSkKYXpUoYyro9aobIo
         w05M+OJ1L5pKK11m2yYuXggxbOPqB3K1uewwD0EspXRKKiaTWgE89dYLUL9BuI+tDfDf
         +IGEueVi9BNYqzjGdD2bpT6CNKzqZpnhFWO2kI/0tjubQhqusycPfm//KZbSunvcBMTd
         ekfw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=UhKaQEwi;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:45d1:ec00::3 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from nyc.source.kernel.org (nyc.source.kernel.org. [2604:1380:45d1:ec00::3])
        by mx.google.com with ESMTPS id af79cd13be357-7e84f872ba0si194610685a.828.2025.08.12.08.00.14
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Aug 2025 08:00:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:45d1:ec00::3 as permitted sender) client-ip=2604:1380:45d1:ec00::3;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id E2DADA574C4;
	Tue, 12 Aug 2025 15:00:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2F331C4CEF0;
	Tue, 12 Aug 2025 15:00:13 +0000 (UTC)
Date: Tue, 12 Aug 2025 17:00:10 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Thorsten Blum <thorsten.blum@linux.dev>
Cc: Alan Stern <stern@rowland.harvard.edu>, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: [PATCH] usb: storage: realtek_cr: Simplify rts51x_bulk_transport()
Message-ID: <2025081249-guru-uptight-98bf@gregkh>
References: <20250812144358.122154-1-thorsten.blum@linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20250812144358.122154-1-thorsten.blum@linux.dev>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=UhKaQEwi;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates
 2604:1380:45d1:ec00::3 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
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

On Tue, Aug 12, 2025 at 04:43:58PM +0200, Thorsten Blum wrote:
> Change the function parameter 'buf_len' from 'int' to 'unsigned int' and
> only update the local variable 'residue' if needed.

But why?

> Update the rts51x_read_status() function signature accordingly.
> 
> Signed-off-by: Thorsten Blum <thorsten.blum@linux.dev>
> ---
>  drivers/usb/storage/realtek_cr.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)

Have you tested this change?  What caused this to be needed?

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/2025081249-guru-uptight-98bf%40gregkh.
