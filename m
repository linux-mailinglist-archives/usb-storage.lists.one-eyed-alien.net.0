Return-Path: <usb-storage+bncBD6LRVPZ6YGRBB4TW7VAKGQESVO5ERA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x847.google.com (mail-qt1-x847.google.com [IPv6:2607:f8b0:4864:20::847])
	by mail.lfdr.de (Postfix) with ESMTPS id 49C3888340
	for <lists+usb-storage@lfdr.de>; Fri,  9 Aug 2019 21:29:12 +0200 (CEST)
Received: by mail-qt1-x847.google.com with SMTP id s9sf89851481qtn.14
        for <lists+usb-storage@lfdr.de>; Fri, 09 Aug 2019 12:29:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565378951; cv=pass;
        d=google.com; s=arc-20160816;
        b=aGx5TJMAyd+DpfcJOPeL+zqFOSpFVrG6gaUFtWneL5kHwbgsIBn0bLjxD3axrYr203
         2Vu46Th64epTawV93RprjUDGwBU3UDF2KX465sDDIDp0U3j01LzJfKHmzSHCs7OTf1Hx
         PI0NEqTFgRXATA7LXVNPXqzPQGaK7/K73Dh3HQRmfdNXYoekyqzlr8XKUfs+P9SkwiWh
         omz6tdw1WEpKRXJdzAd/lStbP2JQ1Zi8M9dU++76Fe/xQMMY+flT7pDyEnsEPayBlqjv
         wZdK/OKqwTF80rLWdfU+K6EcFjEiVsHQqDA3og7HcupQ5wYQwqL6OzXFEgciByTJEVom
         kafQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:in-reply-to
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=1hNHC8YXF5jAHM4QnUC9L6PIIpJTjTQtG57gDTUroGs=;
        b=qa+gn9JgVzljavtuqM6LNhSw3iGPpysBsiytko2m4NtvtFD7BzspJos9/jtht3AKly
         4OPXQNLSElNSHxpn+kexjK7XpAvxNbNXhaOl4eZiMp4O0tzAIIGnjU6S3xMQBmzc3Ycc
         JpBWUh4o05A8/UsjpHOC+tFwbXEDwLWR1YWL8s8C9jwjwgUOer36u0LYv6cfhHNmNcut
         IzyfYSNVf7QKz2rigxejKFx+aXEmVasBM7tAf3PHU0FGJ69NgQzTqssyzt1YybGQTK1y
         AwLGqMa896/QU4g0FMANQan5W5ReC/rIKfPTy609B7mdoWTCYk9Qc0D8wJRpv0kSMKcR
         OBUA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+5d4dbffe@rowland.harvard.edu designates 192.131.102.54 as permitted sender) smtp.mailfrom=stern+5d4dbffe@rowland.harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1hNHC8YXF5jAHM4QnUC9L6PIIpJTjTQtG57gDTUroGs=;
        b=lcxaHxaB4gIjKr8GStEEyofU8xqk6POmmV2cqVdOJavEL2Q1zqv8DzPJc41KOObv4o
         sat++s5Elijc4vT3E8hiarzvRmLANpJMfoFUuQt7+fWAKJPpu4+w/FvL7XM/6a2kR4JN
         tWF35VnwBs29LtC8D5JFNPhSxZaN80XqIllyI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1hNHC8YXF5jAHM4QnUC9L6PIIpJTjTQtG57gDTUroGs=;
        b=LG2cD8rTYWRmFKQhqPx8cMROVjS8IlCn56bVxOg+myWNHpJGVAa1asyGXA29KolwqG
         M6lEKMX8K2I2Fr/mnEfste2JoIul9lNJo4W5Xru5G2s8P2WjPuRV4PVFmz2TYyhb+CFV
         fDU7HDzoTKCb5nA91lsubEsMPxoJyiAVUTs0mz6EQ9qdsdksefhUBmT3YPYTZsr5O35z
         7WUWHGuQNr0pw2b0wImMRtOJFFlg2u0ayJAe8alHk7wY1q6iFO3r0lRinzIpMH9Y96R4
         CITPLsmPrI/Bly81eV8zx0X2tzhcmdx/OhyADn20bpp5/eQm2B7hwD1kUGDdzB6dKc/p
         KyKQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAXYZxAG2EYGozA+QQa+u4QloAQKqPyiU5pC3Zqewa3di5Adh4H1
	9Gpddj93jHf1I6tP5DTuAWgF7g==
X-Google-Smtp-Source: APXvYqwVtXQEW8V/VRulZm84WYLib3okmRLqW91RF2rwA6V5DjnjbUiSxH1SezufgvseOlC5WHbO/A==
X-Received: by 2002:a37:7144:: with SMTP id m65mr13354802qkc.149.1565378951374;
        Fri, 09 Aug 2019 12:29:11 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac8:718b:: with SMTP id w11ls3055212qto.1.gmail; Fri, 09 Aug
 2019 12:29:10 -0700 (PDT)
X-Received: by 2002:ac8:2774:: with SMTP id h49mr18653572qth.97.1565378950012;
        Fri, 09 Aug 2019 12:29:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565378950; cv=none;
        d=google.com; s=arc-20160816;
        b=wUwVk5y8Lf4NXDg6uOEpVWEf3rB8x3ujkuTxX73HBqt0ixh1zwlKcX9EIOGKvbSS/G
         ATt8gV8+yzxMCwrmN0/S9zi7SWVzQHc6J0+hu/iZNVi7/3sGD9wRFLMilvzoGZzTXvPz
         /9TdrAuXiGNPcLkrbzjB2ut5h8Tr1kFm2qL2GZgld7hqEHKccflkcIYJ8eYgDbqVmFpi
         vAkBXkHxcRdSBoAvirk1hhsi2LQFhZ/zp4KcXfuSgMvpv5Z53R5sLtfCNpB77kdl3ewE
         J8/cDrxpbhF5FtK9NtYH1s75T2XMNfGawa/IS0f8sCSSmMa6rWQa0o60YTSVXcc1dAA2
         ONow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:in-reply-to:subject:cc:to:from:date;
        bh=1hNHC8YXF5jAHM4QnUC9L6PIIpJTjTQtG57gDTUroGs=;
        b=K5/eHIxAFQ5WxA9Le6DSigB03+CQw4yIHvZT0vSiX5+DGTLWHTA4p1f5NsWbpzo8b/
         Fya+XUH2d578BSjIjqGj/2kZesm1u2n0EAKaofhixIQaZO5cbJSHmQjp8OC8wpeQiD9h
         Tj5hwNbpa2AMF7GeUlgRIwmxtl919qmj7lTZADHHTbyhSQny50th5ILbxsJSU5U64/Kv
         eH0QCFIrgn3grYTmObxxly9oHEJ6SInYzwFSoTMNSgHK+mQpyVBUhDiJ/N9mhiU0x9gF
         f+OQfMeQ6tSlouZ5OBBO/vaDhamsUcSt40TR5lAvp1IlGgTNtDBFpwDhZC11Lt3p71U9
         H1bg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+5d4dbffe@rowland.harvard.edu designates 192.131.102.54 as permitted sender) smtp.mailfrom=stern+5d4dbffe@rowland.harvard.edu
Received: from iolanthe.rowland.org (iolanthe.rowland.org. [192.131.102.54])
        by mx.google.com with SMTP id i3si38240114qtc.272.2019.08.09.12.29.09
        for <usb-storage@lists.one-eyed-alien.net>;
        Fri, 09 Aug 2019 12:29:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+5d4dbffe@rowland.harvard.edu designates 192.131.102.54 as permitted sender) client-ip=192.131.102.54;
Received: (qmail 5241 invoked by uid 2102); 9 Aug 2019 15:29:08 -0400
Received: from localhost (sendmail-bs@127.0.0.1)
  by localhost with SMTP; 9 Aug 2019 15:29:08 -0400
Date: Fri, 9 Aug 2019 15:29:08 -0400 (EDT)
From: Alan Stern <stern@rowland.harvard.edu>
X-X-Sender: stern@iolanthe.rowland.org
To: Colin King <colin.king@canonical.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
     <linux-usb@vger.kernel.org>,  <usb-storage@lists.one-eyed-alien.net>, 
     <kernel-janitors@vger.kernel.org>,  <linux-kernel@vger.kernel.org>
Subject: [usb-storage] Re: [PATCH] USB: storage: isd200: remove redundant
 assignment to variable sendToTransport
In-Reply-To: <20190809173314.4623-1-colin.king@canonical.com>
Message-ID: <Pine.LNX.4.44L0.1908091528040.1630-100000@iolanthe.rowland.org>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+5d4dbffe@rowland.harvard.edu designates 192.131.102.54 as
 permitted sender) smtp.mailfrom=stern+5d4dbffe@rowland.harvard.edu
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

On Fri, 9 Aug 2019, Colin King wrote:

> From: Colin Ian King <colin.king@canonical.com>
> 
> The variable sendToTransport is being initialized with a value that is
> never read and is being re-assigned a little later on. The assignment
> is redundant and hence can be removed.
> 
> Addresses-Coverity: ("Unused value")

Of what use is that tag to general kernel developers?

> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> ---
>  drivers/usb/storage/isd200.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/usb/storage/isd200.c b/drivers/usb/storage/isd200.c
> index 2b474d60b4db..28e1128d53a4 100644
> --- a/drivers/usb/storage/isd200.c
> +++ b/drivers/usb/storage/isd200.c
> @@ -1511,7 +1511,7 @@ static int isd200_Initialization(struct us_data *us)
>  
>  static void isd200_ata_command(struct scsi_cmnd *srb, struct us_data *us)
>  {
> -	int sendToTransport = 1, orig_bufflen;
> +	int sendToTransport, orig_bufflen;
>  	union ata_cdb ataCdb;
>  
>  	/* Make sure driver was initialized */

Otherwise:

Acked-by: Alan Stern <stern@rowland.harvard.edu>

Alan Stern

