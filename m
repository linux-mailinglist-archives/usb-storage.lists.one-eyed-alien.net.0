Return-Path: <usb-storage+bncBCUJ7YGL3QFBBC4S5TUAKGQEWO26GZI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x547.google.com (mail-pg1-x547.google.com [IPv6:2607:f8b0:4864:20::547])
	by mail.lfdr.de (Postfix) with ESMTPS id F23485C9FC
	for <lists+usb-storage@lfdr.de>; Tue,  2 Jul 2019 09:34:36 +0200 (CEST)
Received: by mail-pg1-x547.google.com with SMTP id s5sf409650pgr.4
        for <lists+usb-storage@lfdr.de>; Tue, 02 Jul 2019 00:34:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1562052875; cv=pass;
        d=google.com; s=arc-20160816;
        b=MviYGTpSZFTCf52EIhITkyFbGJUp6IcZnU5pBLPmtdQjcSh3SDhWKG9GFvQG5KxD+5
         mQcZIqhvJEsaFnpprbnWo+id9ASd1B1rPWlY4NdQ+Ag9TkrwM7JXUOcWt+8bcCUUlAo8
         lminQFdKU0LIaUrTkMWxfx1q3wYjQOJYHSgxSA8cOWv2d+l79+zRJO+c5XKd06ilYF2h
         MkUWIQyk2T798Sx5qLyXVmsUICQnQNJ5aufHVe0ourrFf7RD5OwloZOgFpc4iuKeioEx
         3J21khImmtVJ/K06wXEVUBbgCbOSPkbUz7jWO9O2RkEsomOnaFFjc6WLtEROcHMJXmrx
         bqLg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=makUghZZD+rQRxKRI3xYhl6LY6B/OnPwp0ti1ZQoj6Y=;
        b=BZB64ZDabP4k36GcvnRTgZXcA8viZgDa+IIjzg0WRJ+FAYiIp4Byqdn7ohXqJj+Wld
         osh8lZx98YhlA/KX1rxQeJcCxAlji05hzFoM3SuGH2pzYNEYYs5oR5+uN0M83zZjQrHr
         UzQIx/YctrmgAkwXeHGSE/JR+3im1hSWfBxBZbsZNE14R/DX2weeLLAbtkZuiCV4DYmr
         NWoz1OEe8PFUeRc88Dzul1t3trMxp1bK8ZIW7anAvwLO8NkSpjTVli3q8upUQ988sB5j
         N+e6l2ANIIiZNIL27j+YycqFpVRNfOOGELgRJQ8QuD019B7bsUpjRydW7KWAKZRffUWs
         RA6w==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Cf0ZlK7R;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=makUghZZD+rQRxKRI3xYhl6LY6B/OnPwp0ti1ZQoj6Y=;
        b=axa/0+2TaqLH0npwtmwbKF1ot3V1I7OpaJuzGNEcCaUskzVOtG0AWz9bfCUpLxE4zi
         9nKYy2oA3Mi7093XTIFYWHfcyB2GCl7WCekbv1m/q/jXKp1fKKCXta7HzKblVUDEoA5N
         PlLg7X5tACvqh7XQQNum6x5PBnwtX8XoVINLs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=makUghZZD+rQRxKRI3xYhl6LY6B/OnPwp0ti1ZQoj6Y=;
        b=TWCdrP6nT3M8A3hSiJVte1O1kGs9phs3bKktEfp6wKw29h8WAsA0oFMXaaa4wREtBn
         zW+gneNOo1Cxetvsxuq1HlfNHK1ktXMRg0Xod3U0W/oN7xOSde8oYFx/3FpGx9AknbOC
         nHpmErphf0tZ9n2d2htuUeDU0ptSTK8K31kUNnz/XYerd2lgxWT18qFGK2QnVRhCC0fA
         gVxZcqau55c+wsqtP1M1bwbZYknWgTMr3AyHoQpX0LVQSIwfcnBDH/nNVdeFx2fTxHuf
         G85PWkBoyzpXLT9O5p3mQEzNbGO+nVlCK697OjL9zahx8BdrEPl/YFN6DzhGI+zmehBU
         PZnw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAVbf1qqQhkUaGxtfMseSQ+XcMSc45K22em2LgdqLafYaSb5xmua
	QGqkp2JtyCy8Ft94R6jLgEQALw==
X-Google-Smtp-Source: APXvYqzaWfMsWrPzGkulicLYCcspyeLh+gFzZnlHsbZf70JXLlY6oZfwgn837v9dXyshLprsTiuqMA==
X-Received: by 2002:a17:902:2a68:: with SMTP id i95mr34194817plb.167.1562052875639;
        Tue, 02 Jul 2019 00:34:35 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a63:de4d:: with SMTP id y13ls1996111pgi.12.gmail; Tue, 02
 Jul 2019 00:34:35 -0700 (PDT)
X-Received: by 2002:a63:f648:: with SMTP id u8mr29093307pgj.132.1562052875150;
        Tue, 02 Jul 2019 00:34:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1562052875; cv=none;
        d=google.com; s=arc-20160816;
        b=mkx4mCvNWUNE6UWtkWlPgIKcC6qAkeLHHSRQlscMJEDbfEuiC8e6KDPivH59P/sHYb
         46vkGz5cB35UBuzIM6qZGpbvy2ycCzxHMSH7NnBk8oUhA8OgXHWNCzKQNoS83QmvbGqH
         BCfON4zbJmhRIby+dFxhzKnqv/+NtA/mXfCH6gGKjH+ucikMARXtkY7NKutGOLZhK8mu
         FVPut22SGfjuL68rzG4ZhUKIshyPIbBpDJIUqnwIrZGE15kB/FjehLVKNoYtIPx4t0Sw
         uNjhJyk+0ZofZ3cdkjSyhNydlQbB8s2mIe7QdDKUP4MQjQ7K2hTWq8Yeckify0/z67n4
         nZ2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=530JoCAunCRWazIL0D6M3cd/KPCDVFkDy/Omd9dgKBY=;
        b=R+Zo52ih9e4R4cUE5vlvheMN/H+UUxWFEWcmLGn83NlpU+rKeyC2G3mF4BSTjI9a6P
         zXZg33PqCS8dLOcWQ9R4DMHdNvWiXDEKuzaoryHMzEGjcF7E0FMf9yRMhE8dikojQHYN
         KGWdz9i26UxWuYoOkSdfRgXEWW1McW5wtVpxfJCcFvpTTN7rVwZH89b9PaBkYe8v5vc9
         TjSoaPLAFZWupa7VAMEuDPTxE/lr02/pEEo4GnzbruCa6l8wKkwiBx+4/Op1CT4ObHvJ
         ftFrNcBkAL1jXxNFewxJ0J0cqY+EQu4UpQxv01+qHdw+ItrfMQWHyAAdVRnHshJLgAaa
         jB5Q==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Cf0ZlK7R;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id j5si11871904pgi.181.2019.07.02.00.34.35
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Jul 2019 00:34:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5E120206A2;
	Tue,  2 Jul 2019 07:34:34 +0000 (UTC)
Date: Tue, 2 Jul 2019 09:34:32 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: JC Kuo <jckuo@nvidia.com>
Cc: linux-usb@vger.kernel.org, stern@rowland.harvard.edu,
	usb-storage@lists.one-eyed-alien.net, oneukum@suse.com
Subject: [usb-storage] Re: [PATCH] usb: storage: skip only when uas driver is loaded
Message-ID: <20190702073432.GA9265@kroah.com>
References: <20190701084848.32502-1-jckuo@nvidia.com>
 <20190701085248.GA28681@kroah.com>
 <8e8e8703-8620-b625-4917-bbb8d999caa4@nvidia.com>
 <20190702044249.GA694@kroah.com>
 <f6ed2505-5da9-c217-a052-a19d197c5c8e@nvidia.com>
 <f43e7ecf-64d5-20d2-0461-85a55fa28a33@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <f43e7ecf-64d5-20d2-0461-85a55fa28a33@nvidia.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Cf0ZlK7R;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
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

On Tue, Jul 02, 2019 at 02:56:25PM +0800, JC Kuo wrote:
> -----------------------------------------------------------------------------------
> This email message is for the sole use of the intended recipient(s) and may contain
> confidential information.  Any unauthorized review, use, disclosure or distribution
> is prohibited.  If you are not the intended recipient, please contact the sender by
> reply email and destroy all copies of the original message.
> -----------------------------------------------------------------------------------

Footers like this are not allowed on public mailing lists, and forbid me
to respond to...

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190702073432.GA9265%40kroah.com.
