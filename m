Return-Path: <usb-storage+bncBCUJ7YGL3QFBBU56RSVQMGQEOUZI22Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc47.google.com (mail-oo1-xc47.google.com [IPv6:2607:f8b0:4864:20::c47])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D6727F9242
	for <lists+usb-storage@lfdr.de>; Sun, 26 Nov 2023 11:35:01 +0100 (CET)
Received: by mail-oo1-xc47.google.com with SMTP id 006d021491bc7-58a23b6c2d3sf3135815eaf.3
        for <lists+usb-storage@lfdr.de>; Sun, 26 Nov 2023 02:35:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1700994900; cv=pass;
        d=google.com; s=arc-20160816;
        b=fVRWF4jV/GKbDqFwsvGReEtGogCtRRLCAfucM0lUnZt/FWssyY0/uvB0Z9dpDAvj9U
         FLQuD39/lDudSteJFxgGD+H7DA27wXgLZ5hd77d5swB9ssiSXFKYX6BymkWpogktVpMN
         iZoTE1GoB7GAbT+bugKXZSlvc8Yv8E/li83zNeyOQ7BaLUcSMulzjOO0m//yKGLNczbM
         y7Mg9IQiurW26rsCPU68cluufQb58J8zqBg6yNKDC8qIZfwE2sJXl3X5pFj8gw0aJaxH
         dKQrUje/xrvim+McWclsz74rlyJvWOQplMkGXNfD2rZgNuu1sGOBB8cf7s84DL8gSfSA
         g2sA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=JgHDuLjl4LOvdGSeh05r/RdDsQ3jPUwsT7m2MUTlGb0=;
        fh=hARnL3WYDplL4jINTK4zp6bCL27QXO2pKJn5VJGnySU=;
        b=gR0WK2amkZTixF5nVXXztUQUKaPmwne3gstaKosUz+rYRo+UyINqIzUTmMumufRO94
         JKUnJx2kfqIbIjUiGIVCjqC1gL7Lza8OQmh1ddXcNIXZ7By9pPV0R9TeF+oPRd02Xlry
         LI2HT55jpLiruoEbprp/HHfsjY56JzrQAHjeOFsSe73KsgBIcs1b8C7bXBBRQt8E3/fy
         A8iN2aNf9UHBMLF+UPR5mZgtwfMhMaNmKe75chY+SoN0t57znF21/j9w95UgdlqPcKGK
         xnniXMtG2Fw0FS7UpmkTrig8ydRVDi55cVH8TQf/d6MO0oJvHxjCyI3b3qj9vSFkwF/2
         onNg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=fjKkxhFG;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1700994900; x=1701599700; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JgHDuLjl4LOvdGSeh05r/RdDsQ3jPUwsT7m2MUTlGb0=;
        b=H4GjvKSDsxxFDzi+SyQair3/O3fO6wQRY71ItjdaKycJsOcqG7NKARBcNopwIrHwgn
         gZL5tx+LI8pPAU/F8gR3U8JlXn1FXSt5eB0baouYuUV+0m54S2UIF2rcJwKgOS7jAgXr
         oBF5J+MSbVjlKA3c3y5FMowMgEsYHmEU+bMY8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700994900; x=1701599700;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JgHDuLjl4LOvdGSeh05r/RdDsQ3jPUwsT7m2MUTlGb0=;
        b=A13n0Yn1hYkbAVc1fdI25DI5zqpcsA7BhqRja9h/OWKmuHWftXWNURxFqhGlZ09uA8
         bSZBW9+kpMc6tdbtyKlcqa4m5YygBA/XZqtVHUNbu68jHuaWO/oeUKiLt+ZMe7uSpDlG
         pn68rz+GSZQRWBIsRYbD9MXLqp2N60yOEbY3y1tz1bihx3Wv3ZKWCY/TQuQBR1Wpyo2/
         rTMK4Lm5IEv+kC5uFo1q7XMTuY988G+YB9R1P1jCfZbUZJXF9909M2V9Pr2YWZ4m8i/Z
         4qHg9mvpDUtau5r7cjUt9o8szhdIP9VmGXYvGrlDRaUZcE6Z3pHO9r9hASrdA7pPrt6x
         YRFw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0YzBh0k6HVZL27kJbuC5zJJmmPZ1arAmmEwbjnU3Pm5OTZKS7YM8
	mHnFmrn5jHKrZAX70zXiVk8YwQ==
X-Google-Smtp-Source: AGHT+IEO/m8wGU2YVm40DLV/bqbRzRqYKHzFrGBcDXAi4hdD2tTPjNMjiYKAeG0fgOsoFdcl7WnzUw==
X-Received: by 2002:a05:6870:d0c9:b0:1ea:2d58:46e3 with SMTP id k9-20020a056870d0c900b001ea2d5846e3mr10424792oaa.33.1700994900150;
        Sun, 26 Nov 2023 02:35:00 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6870:ab15:b0:1fa:2603:b5fd with SMTP id
 gu21-20020a056870ab1500b001fa2603b5fdls1243187oab.2.-pod-prod-01-us; Sun, 26
 Nov 2023 02:34:59 -0800 (PST)
X-Received: by 2002:a05:6808:398e:b0:3b8:5bae:83ad with SMTP id gq14-20020a056808398e00b003b85bae83admr7079724oib.17.1700994899404;
        Sun, 26 Nov 2023 02:34:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1700994899; cv=none;
        d=google.com; s=arc-20160816;
        b=kT9xEnYvQVRT9hBwqBZDnCDOLI+OC5OSTb7qq8Dz3peiMeY0fkWRvz8N1dTX4cbqUR
         8FigfW9LtzcPrUREjeuIJH8/d+URWU9HaNgUhF2RoiWXcuR/l9HzlZ8dRWFkkhpnBk8O
         PCDOtmc4pt1ETnROd+RvokLXkuGl/xPxrkOYkAwca4KL36qTtORXtq3PAnXBcZBIrDzc
         NHJMpCL6DPFRZ+rX7k9+wBW7LvjDpCzB/2xQn8Ce8yQuQWgeHuKB7jDj/Y2gIomr70s4
         gJYixQ78aOFPn0cRSuiww1OhwFrBU2fowf3p900DERwpIYpqsnSzZTQ2+6U1Wt9rCP+Z
         dHPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=lTdOwsFdrrts4OvEQg6YJwWJhzWVtXZzex1u9ZMHvZE=;
        fh=hARnL3WYDplL4jINTK4zp6bCL27QXO2pKJn5VJGnySU=;
        b=F837dAZghB4+WroP5/O75RATQdSL3bNyHYbwjlhIuK8N2SIzPn8Q13gz9RBh0/Rbmz
         6tIYJICzzP6vYyCiXXFiibxjw/zTqM0GXyeHEUB/7l/rAnDvhPBvqkbZKm8AOEv81Bnf
         qzg6XESd/PWRAR33Y2LREAFqUuNzJBSp4GXVQznGmazoPR23fEWZeQdGCanpgJB8FApf
         DitoKoj7WlzOKN7ke+uWOy1yHmz0wwKmlU6oJLGW4L8AgJAv+VcL1qCfJcPk9ZqeMrT6
         VeFbwc+fO9f6MibGbJorT247BP60ZELOf5WR86xUfW6uqkUGyepEROBUpyf2sTBOCrnF
         dA1g==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=fjKkxhFG;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [139.178.84.217])
        by mx.google.com with ESMTPS id gr11-20020a0568083a0b00b003b83d679b61si3129937oib.158.2023.11.26.02.34.59
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Nov 2023 02:34:59 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) client-ip=139.178.84.217;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 1CB4A60C19;
	Sun, 26 Nov 2023 10:34:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 78559C433C7;
	Sun, 26 Nov 2023 10:34:58 +0000 (UTC)
Date: Sun, 26 Nov 2023 10:34:55 +0000
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Ren Xiao <u202112004@hust.edu.cn>
Cc: Alan Stern <stern@rowland.harvard.edu>,
	hust-os-kernel-patches@googlegroups.com,
	Dongliang Mu <dzm91@hust.edu.cn>, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: [PATCH] usb: storage: transport: Fix switch-case
 indentation typo in 'transport.c'
Message-ID: <2023112639-perjurer-suffocate-965d@gregkh>
References: <20231123063417.2625808-1-u202112004@hust.edu.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20231123063417.2625808-1-u202112004@hust.edu.cn>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=fjKkxhFG;       spf=pass
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

On Thu, Nov 23, 2023 at 01:34:16AM -0500, Ren Xiao wrote:
> Adjusted the indentation of the switch-case code blocks which
> start from line 1051 and line 1304.
> 
> Signed-off-by: Ren Xiao <u202112004@hust.edu.cn>
> Reviewed-by: Dongliang Mu <dzm91@hust.edu.cn>
> ---
>  drivers/usb/storage/transport.c | 46 ++++++++++++++++-----------------
>  1 file changed, 23 insertions(+), 23 deletions(-)
> 

Hi,

This is the friendly patch-bot of Greg Kroah-Hartman.  You have sent him
a patch that has triggered this response.  He used to manually respond
to these common problems, but in order to save his sanity (he kept
writing the same thing over and over, yet to different people), I was
created.  Hopefully you will not take offence and will fix the problem
in your patch and resubmit it so that it can be accepted into the Linux
kernel tree.

You are receiving this message because of the following common error(s)
as indicated below:

- This looks like a new version of a previously submitted patch, but you
  did not list below the --- line any changes from the previous version.
  Please read the section entitled "The canonical patch format" in the
  kernel file, Documentation/process/submitting-patches.rst for what
  needs to be done here to properly describe this.

If you wish to discuss this problem further, or you have questions about
how to resolve this issue, please feel free to respond to this email and
Greg will reply once he has dug out from the pending patches received
from other developers.

thanks,

greg k-h's patch email bot

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/2023112639-perjurer-suffocate-965d%40gregkh.
