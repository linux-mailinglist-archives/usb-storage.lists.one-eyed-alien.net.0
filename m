Return-Path: <usb-storage+bncBCUJ7YGL3QFBBD5KTHBQMGQEHZ6LFGI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x648.google.com (mail-pl1-x648.google.com [IPv6:2607:f8b0:4864:20::648])
	by mail.lfdr.de (Postfix) with ESMTPS id 90231AF6F91
	for <lists+usb-storage@lfdr.de>; Thu,  3 Jul 2025 12:01:58 +0200 (CEST)
Received: by mail-pl1-x648.google.com with SMTP id d9443c01a7336-235e1d70d67sf41346565ad.0
        for <lists+usb-storage@lfdr.de>; Thu, 03 Jul 2025 03:01:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1751536912; cv=pass;
        d=google.com; s=arc-20240605;
        b=eU+W+KkCCexECM/eI40sl3tSKY8BH9y/qALhBmTDVVNYBrTIKQrTwkAPJke73Ax9JE
         H0h/Y4tmUqVkh0yUl3wcNg9le0FtoedlPPqGL6gdip7Y0VY55l+cedPF1l4wDNHyJ5E2
         Z1JAiSkkGJWno01UZeASuT/SqRLGGOlNQMQ5DBzBE5ELPv501QvN67Q2M4U6pxUcjuqF
         2uz7c52e7dgHr/2/NpALyrl6e5WDM5HpYfP9+sxlO04QcbH7lfWSi5I91hZTa2Lvfq4H
         QLIdFxM6ZWqG39q1CEejh4BVu+l00BeYQIlDdhrniOygrBXWsArJxRMNDXIRPdfDcKCH
         AZog==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=LWtU0lzj4DeLBXl7Fj7x3NWUbQtUo8vC8HWuhfxJYY4=;
        fh=iTr4ZhAIXDmwqfSRcgI5TzH8sqq0hXLSzzXGyPLmxzg=;
        b=j+v8PDtf/uimRz0IAqlP/6cj9g9uzZbOJaTA6+LCNO0XC4lEWymNdMcjzW3MjPFQj+
         TbtIZwtkbPX+pD3dhgw2t/2mMNsLZE8IkQnVHjTrEi/pEN8P20rIalJqHOp6Fi7YT8WF
         NJIG5Bjc/2iDXJigWYIH931lW4mCr0pKSdCMcLnK2rY/ZrXjyO2wzjVu8xsohZnreFE3
         sdmzXPRYP+oYsSPLuEQPL3xIR8g6rDJOYc8ufUMUp3+PI1C676dDYJlU8lUiaRvySQwQ
         AASvJ0v5IbqZB8mwC17aEFc3qt+is+h7EpTvFWkxWScx9RxCllbEP8uF01CJXjYDAYWy
         Ma1A==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=hoQ1Egnu;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1751536912; x=1752141712; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LWtU0lzj4DeLBXl7Fj7x3NWUbQtUo8vC8HWuhfxJYY4=;
        b=NCpJ8DPuvAQ+vxoOI8BzQjQ4wGyURVMKIwjuzmZHL+BzZnt1uWCuV66hza7lbZ7VT6
         BPE8zXFmlj0uJg8LlpOhGFPH8MMA0PHZ7mVSsJtl83DYNPAjQb8QJK6uPA4pB2Maw2in
         aoLia82H1/Q2aqay1UaQdJNexkPJUQ51FaBKM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751536912; x=1752141712;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LWtU0lzj4DeLBXl7Fj7x3NWUbQtUo8vC8HWuhfxJYY4=;
        b=gbbbr5l0gMTH8Anz04tKBymI5+OOpojCN8i+pTdNV3D8GDUu6ITm1WTzV2Z+wLCZb/
         8fLIK0xVgGSpzBl2ykD7SZXTdlUCFwjTFj2nvSL3+OAQPovIWDDGdfewskE+W12oA3JR
         W6/KdLqSf4nQrGCY607F0gXGYqCyRxlq4I4r6196w25bWPMvpXgFmwdQBnUJYJ6N8YIF
         TxyhKuTgEObUpJELbKrFYWKaZSqxW95Jr/bXLfclIWkKrUbow4e7YMAVqaV/L7JryKRQ
         8Y1u2y5ukNDuVTrl21SDK6QPtjW3fKte3eEeC4iovOg5O8ZvVAaVQ05cCO9u4v6kXKTk
         gElg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWBOrpymMbN7P3JeHyxTX9Y1fAAZscKnmPK+Y0W+vTTiwy2oIr2+LxYkIpeyoQCtohHzak0eg==@lfdr.de
X-Gm-Message-State: AOJu0YyEWdmc787fQkRum9FHM51/Lbd8ZjRAvWTLjRUlxex4CHEhUPh7
	VbUnXgpZUrhxD2XCOkFmPqWDwpz5p+Pbp+JOuEQvcJivhzfnBoBZxYiTT11zKsEmbUM=
X-Google-Smtp-Source: AGHT+IGPpx5JS2JJyfyPVw9cYuFoa2BxF+f6YIcsGhQTssXF+n3xi+6Wm7QyYa+QAA0H7MBJ0aZSeA==
X-Received: by 2002:a17:903:340f:b0:23c:7b65:9b08 with SMTP id d9443c01a7336-23c7b65ad61mr17700135ad.1.1751536911789;
        Thu, 03 Jul 2025 03:01:51 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AZMbMZdiiPwQBllfetjMaR0EldpZMAUmpi39lQOmgi+uEP925A==
Received: by 2002:a17:903:2312:b0:234:9ef7:61a6 with SMTP id
 d9443c01a7336-23c6cf8ce6els19590435ad.2.-pod-prod-09-us; Thu, 03 Jul 2025
 03:01:50 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUNoiajeEQ10/5leMO+xAkXZi497zJ4Aem3lUVB2cCtDTMfc3gPfhwZyKYeus/QhvBfTqNEia78HnVBSw==@lists.one-eyed-alien.net
X-Received: by 2002:a17:903:2ecc:b0:234:aa98:7d41 with SMTP id d9443c01a7336-23c6e570735mr83706015ad.42.1751536910325;
        Thu, 03 Jul 2025 03:01:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1751536910; cv=none;
        d=google.com; s=arc-20240605;
        b=U8hqQo2XCDFZT7FMJREFjow9Q2tEoqRqnpz5YW7PDIaiOQwsTFI3Bkn4UL2DsidiJR
         XXXMDiojEITOiZblKqQm+10OjaNMWZ3FsNIsaUNAtKidaIygUpJm3RJZ32JDO7Pad3VR
         4EGa2GjGANu5UqN25Lu1mT2KA9M1XBRFeV07rOAmPt+963/t48SD/thhDRrMs4dEd4T0
         vybZrQ3YMlaZ3STFNuRZhC11E9g30alxUa8z0UoBtYRwjw5S0N5raP54BslAYUP3d0oL
         2MInX9GEcBEeD5Ioj2lY7w7ttCPP6WFjm3W2gUvICe6seLqWmBziiJYevnt7nLP37wtF
         KnrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Hvl3WU6D7fcWmcHh2X6CT+8J99ON976f01r6cuOZi7g=;
        fh=eRrH2rfm8Wgo0y0FYoRiBj0jc3UIT9pv4WkT6Ya3FA4=;
        b=D8mTT2Gsv5MpeM23jp++eXfm+OypIAKwjVehomrTOei1EPy/+OAO+kN+AJHoM/oc4F
         Sjb2E6Wp1BrkltPf+6RNgf6Zc4aGVx6pscubqLaYjFWB4UP1yC4xUVdBXL5lsvOPult8
         rIPSKrT5O9+vbMtcAk3tHm15O0enyNT0YdJr8jyBtQOhwIJiYuVDs/g9hVj2M1WmLVbh
         KKjdAdDq11lkqSyHJvI/QMQpWB2QkpFyecWTwkKEk3le2Y9zdbE4zcFeBOCeo1Vhhxs7
         baYgqLGJnrUBbPuNI6i1zsFQLwimQ6u8VROpyMRCpfUKhCWg8f1iZBhapq9RePv5wfWh
         FoNQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=hoQ1Egnu;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from sea.source.kernel.org (sea.source.kernel.org. [172.234.252.31])
        by mx.google.com with ESMTPS id d9443c01a7336-23acb3a1f37si185909015ad.252.2025.07.03.03.01.50
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Jul 2025 03:01:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 172.234.252.31 as permitted sender) client-ip=172.234.252.31;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 9FBB44459E;
	Thu,  3 Jul 2025 10:01:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2B355C4CEEB;
	Thu,  3 Jul 2025 10:01:48 +0000 (UTC)
Date: Thu, 3 Jul 2025 12:01:47 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Jie Deng <dengjie03@kylinos.cn>
Cc: stern@rowland.harvard.edu, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: [PATCH] usb: storage: Ignore UAS driver for SanDisk
 Extreme Pro 55AF storage device
Message-ID: <2025070329-rinse-engaged-e7af@gregkh>
References: <20250703092946.939936-1-dengjie03@kylinos.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20250703092946.939936-1-dengjie03@kylinos.cn>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=hoQ1Egnu;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 172.234.252.31
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

On Thu, Jul 03, 2025 at 05:29:46PM +0800, Jie Deng wrote:
> diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
> index 1477e31d7763..9f093a6af7f9 100644
> --- a/drivers/usb/storage/unusual_uas.h
> +++ b/drivers/usb/storage/unusual_uas.h
> @@ -199,3 +199,10 @@ UNUSUAL_DEV(0x4971, 0x8024, 0x0000, 0x9999,
>  		"External HDD",
>  		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
>  		US_FL_ALWAYS_SYNC),
> +
> +/* Reported-by: Jie Deng <dengjie03@kylinos.cn> */
> +UNUSUAL_DEV(0x0781, 0x55af, 0x0000, 0x9999,
> +		"SanDisk",
> +		"Extreme Pro 55AF",
> +		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
> +		US_FL_IGNORE_UAS),
> -- 
> 2.25.1
> 
> 

Please read the comment at the top of this file for where to put the
entry.

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/2025070329-rinse-engaged-e7af%40gregkh.
