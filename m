Return-Path: <usb-storage+bncBD6LRVPZ6YGRBHF3ZCBAMGQEEH7BEJA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-vs1-xe45.google.com (mail-vs1-xe45.google.com [IPv6:2607:f8b0:4864:20::e45])
	by mail.lfdr.de (Postfix) with ESMTPS id 6010333F3E6
	for <lists+usb-storage@lfdr.de>; Wed, 17 Mar 2021 16:17:49 +0100 (CET)
Received: by mail-vs1-xe45.google.com with SMTP id r14sf10341469vsn.23
        for <lists+usb-storage@lfdr.de>; Wed, 17 Mar 2021 08:17:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1615994268; cv=pass;
        d=google.com; s=arc-20160816;
        b=so89C99gifvXN+TWEpER8/JT+swr9mJGYxhvYqhLBi5DRtawT+9DN6hBaPc5fu6+67
         88NN4wLN4sxdRIxwHRYDhpFwX2AM+/A1LWQpWzFKgN95+agSnwp8nYJiOr2vJOFdRhwm
         TS9qFdhYlUUxSlFywZlL5hKpYEpKKLhZhMK09ZUBa44wwe/L1vQL8G1KTZbKTGjWFNtD
         uCKKbARUqkXn/G6xW5E58ecGs0LW45wZPHUCWs/lq0wDRxJ0fH9po1PKWtw7MpFnMYLN
         c78oDS38vpMT9U0txgw1nEBa7YJDi/XKGTQ8XtxcWbl593WeN9Gye7chlcDvRyR+BtWU
         gYOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=jZNeycAkx94qz1Cu5N/3wKvSrvCoOdBVmAIS5t83wyQ=;
        b=lElwO4sZ4hqKcLo3MThFB+087mfk+yCj09lF1m39DKHM+uYLX9o0MjEZSdwOVuVDnf
         CzqldterBmvWLqVKuG8DtLWraRjwC5ZcWIVk38JCn22cgpYIXlRi744/7UNsSdV/aMZB
         BZNLknja1xnct+Ubr+3bsYHPWn/dBbIk7QUUpeTWB1yg3FCJPFPlGwCSFgIpwnvyxwWd
         a1f4IiERYkIAwjUluFDlGlkzXBTF/TImK/6p61c7VaBYVrLSlI/HlHUHJf17bnVBiVWV
         Lni+9ZVIT6ECdiv2gOKgMAWNHAPXsaWCqvpqdXllpYeA3rk+yjhVcOmgPhnPWfSUgghd
         hl1w==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+605a82f6@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+605a82f6@netrider.rowland.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jZNeycAkx94qz1Cu5N/3wKvSrvCoOdBVmAIS5t83wyQ=;
        b=kMGT/jmebW/EfiHJKTT16BQo2rEA1luvsGd/WEXDnaefOW48aEJobLAKhfovOaCXhk
         jkRxf9g0tOpXdTmcQkrIwZLAJxst6GSHVdjtrTqCGafpZCffql7KbMgETeT/9UXbCsEK
         6KecGa7uGazKzrTChu3EMAs1P3pvBlPtdmD+c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=jZNeycAkx94qz1Cu5N/3wKvSrvCoOdBVmAIS5t83wyQ=;
        b=olW/bG0DKZZxx1I/f0jkUWy1VBgrFipK1ROLN5vp8jw+nyKDVOERvDl/bZfAm8Z2Xc
         rdb4TmHo2bITLrtNgX5gu2LoFqnxLmymyYAndr6nJWSvBrZ6EWMUmxpa5rKoVW3dtSYh
         s6HpOciPOic+bDdtV5U1UzWSQ8O3fpyM9dmCHGJquRH6D8HHZ60X3IOBAgdyAviT5g+B
         9jODat1/hQFIfy4R6m4Zqp+Ue94yE+K+2PLg5g+r4vFSE6pyzGP9ts1+szbatd/QH6kL
         DsZh6lKV/kQAOwZAA/7N1PTKo+yfcAWVtW4SBvf20yoyUQnOiEFkDT1J8LsVwFsQ0Az6
         QKtQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM531aG4qZjs1KU9PWx8VESxwAs7uIILRh4pSm8amKLFFJftX4VP9v
	fSjkggzbE11WMGBBUuWPHXmAkg==
X-Google-Smtp-Source: ABdhPJyBegQIUdDaFA6pMo6RY6+9Uy3uxIQi5DeLkio/46188df1FLwU0D/WcxA7ruIzkik5D5lYVQ==
X-Received: by 2002:a05:6102:2270:: with SMTP id v16mr4063415vsd.29.1615994268473;
        Wed, 17 Mar 2021 08:17:48 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a67:e295:: with SMTP id g21ls3059491vsf.10.gmail; Wed, 17
 Mar 2021 08:17:47 -0700 (PDT)
X-Received: by 2002:a67:eb98:: with SMTP id e24mr3615541vso.51.1615994267773;
        Wed, 17 Mar 2021 08:17:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1615994267; cv=none;
        d=google.com; s=arc-20160816;
        b=WBkIi4fmukwEtyO2LMdOUfs6ar7aTEilDVKto3nf8hUIOfVxoGJD4Pk82cRsBiG+Ox
         ZV5ktbwKPTnsEnVQAY0fL8U1/0Jzq305TWdIqzqqXeB8gVtWILPZE7c20ocEeQgDd3N6
         E9Ad/ygbbI5Alxoa3tz8JClh4G0qR/sRV5z0YT6u0HucRuQTDGVT+mZovze/aRBfhLLv
         6DAZwPt8h9NhPNRGz1dvPh8Pl3qt7+D53PzewICAu5fGyk6n4G9qkme9qDhYtz+UfE61
         w4kg5VwLShPPmBUlOB6xbOpZ1jHrzeXziWdPm+s4UL6h3FT2Zg350jLN+uoo8uhBrPE+
         0Y2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=CK2HjN1yNC9goJdobQABgjAgG20S0xClooZ9ElJ4srY=;
        b=XW1x2MtQP+Y8tWx8HdEnPcbgZ6rSEig1T8pNSGjKy89f0cJMHYsCmmU54vrzkzh3DM
         P+gXWv78z8XIEBLcEvx5jVmFUdWEQ/xi4a3lqRVyNBEuIilrFjYHkYE/LK33vzO2+OUg
         2ls8Ta7SfpzDqU4ZlHlCH2wtxvnJh5c00M5u3xwAa6Qq3F6nsRplGIODrnrkB6rXJLk6
         a/D+DXf1ihLy/9Pvx1/wSAb3+AGOLAnMChXX9c4KA9EK7QH0YA6U9nyqsIS1QHkdpCPX
         kPf3Qno+H0f2MOGQiqwUb1yDN4sj+FIyqHkSZS+2GSEQugpIW+LMhzD5dCF3GG0uXT4t
         7O5w==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+605a82f6@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+605a82f6@netrider.rowland.org
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id m8si3176557vst.124.2021.03.17.08.17.47
        for <usb-storage@lists.one-eyed-alien.net>;
        Wed, 17 Mar 2021 08:17:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+605a82f6@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 490023 invoked by uid 1000); 17 Mar 2021 11:17:46 -0400
Date: Wed, 17 Mar 2021 11:17:46 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Hans de Goede <hdegoede@redhat.com>
Cc: Matthias Schwarzott <zzam@gentoo.org>,
  usb-storage@lists.one-eyed-alien.net, linux-usb@vger.kernel.org,
  systemd-devel@lists.freedesktop.org, hirofumi@mail.parknet.co.jp
Subject: Re: [systemd-devel] [usb-storage] Re: Amazon Kindle disconnect after
 Synchronize Cache
Message-ID: <20210317151746.GB488655@rowland.harvard.edu>
References: <20210309155046.GA176674@rowland.harvard.edu>
 <dfd2b281-3beb-9869-37b6-8bd48a6cf40f@gentoo.org>
 <20210310214648.GA236329@rowland.harvard.edu>
 <841a9a54-78ee-ffaa-fc3c-12defcf43b36@gentoo.org>
 <20210311143912.GA257360@rowland.harvard.edu>
 <f2acfeef-a81a-d7c0-90a8-b290a18cb742@gentoo.org>
 <20210316162650.GB448722@rowland.harvard.edu>
 <031a20c5-27c3-cc13-6e0b-a308644abce4@redhat.com>
 <20210316170433.GD448722@rowland.harvard.edu>
 <1d9f059e-8b21-0895-9a50-39b6b1a5cc5c@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1d9f059e-8b21-0895-9a50-39b6b1a5cc5c@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+605a82f6@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+605a82f6@netrider.rowland.org
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

On Wed, Mar 17, 2021 at 01:21:50PM +0100, Hans de Goede wrote:
> Hi,
> 
> On 3/16/21 6:04 PM, Alan Stern wrote:
> > I think it would be mildly better, but not a whole lot.  Since the 
> > Kindle describes itself as having removable media, the kernel normally 
> > probes it periodically to make sure the media remains present.  The 
> > default probing interval is 2 seconds.  Reducing it to 0.9 seconds 
> > doesn't represent an exorbitant additional load IMO -- especially since 
> > Kindles don't tend to spend huge amounts of time connected to computers.
> 
> Ah, I did not know that the default polling interval was that low(ish),
> given that the default indeed is already that low, then changing it to
> 0.8 seconds would not be a big change.  And we probably have a lot of
> lower hanging fruit for unnecessary wakeups then that.

So we need to make a decision: Should the patch be merged, or should we 
punt the issue to userspace tools?

On the plus side, the patch is rather small and non-invasive (although 
it does allocate the last remaining bit in the 32-bit fflags field).  
There's also the advantage of sending the extra command only when it is 
needed, as opposed to increasing the overall frequency of TUR polling.

Any opinions?

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20210317151746.GB488655%40rowland.harvard.edu.
