Return-Path: <usb-storage+bncBCUJ7YGL3QFBB6ME4KXAMGQEXLTTDMI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oa1-x47.google.com (mail-oa1-x47.google.com [IPv6:2001:4860:4864:20::47])
	by mail.lfdr.de (Postfix) with ESMTPS id AF94386106F
	for <lists+usb-storage@lfdr.de>; Fri, 23 Feb 2024 12:33:14 +0100 (CET)
Received: by mail-oa1-x47.google.com with SMTP id 586e51a60fabf-21e4fe57fd1sf536554fac.2
        for <lists+usb-storage@lfdr.de>; Fri, 23 Feb 2024 03:33:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1708687993; cv=pass;
        d=google.com; s=arc-20160816;
        b=kjNlzP+LCwQYMmZzyibEDnwkmjUVouI+lNVFTQLJbCJ0zi1MqSLQWvDc9w3nHZyzxl
         xdKtYgK/8ap7hADssvUW/Ry+cc4zT5ezvoKUYlsueVUjcQwoZqtoWXvhwTyoDFdat+5s
         4n86g31lxKkOPBZavC5ozjF3hS8hocR2ALwe4cgtwpxY2+7ag/y/aHF/3D1Q9Ei489pM
         qlnT3sjLO3t9752nVcOUzKf0Et78OOcKEKXEAOXbA9Z3BGAsj32WXl33oLZcVvxi4lo+
         lC6ThU0YwLdoD2pp1MG8jMkJYrywwG0P/3qkZEGhg/gtOJVLl6nFMSTpSlSWxgTBzt4v
         QHEg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ZGlUpi9dAdGKwSQ6QpGX0YPkjCD2SM+Dpok7wz3uZHU=;
        fh=/TjrAgpLLa9QMOGdQbVcnKW8KrPgzRL6QXA5tIZMe3Q=;
        b=SrB55G72nx6bkloSqEDiP157EXOlbwmpqI6gllpgD8jFIiFB587f5JCoJdYn3vZcOT
         jLpMan0xneqAuyRteBt+w357pLIDxRRyln8vf49BjIAtlyWGivKnPbdPhRqXTXD1E0ZV
         9YZw1HXF+aIjp3EMdUXMVO0/GR/jDz4pr0KS13lEW0l5114jFu78OPVJPbqAJmTzC9sM
         HHz/7Vy2Pe6Nk95H2IXQuSXZf8+Tg9fNfoQeoOjatHqd4MjGc4fm4/M7pSyr0cvlaLRg
         fDFLoTTN2cp1lKukBofYMezrxTJ/4TO/RD7ak2D1LQsFOhC509bJiCF0oAiyJBYYsEOV
         NN6A==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=efIK4Sn9;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1708687993; x=1709292793; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZGlUpi9dAdGKwSQ6QpGX0YPkjCD2SM+Dpok7wz3uZHU=;
        b=a4hn0V8Hjs3rhcwvhhomz91xJwYyX9B3ICb5Wb+x380vajG1V9IImm+ZcASaVxiNqm
         /eyT3wumie2IfPkrbSQGcXqYlOe+qOATzyMWPbYKu3/tbz6sX1kpro8ehGK2/+KT7YuF
         PoILpn8Pyf3KJCZqq3JqoGsJ3q2WhF9QKILPE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708687993; x=1709292793;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZGlUpi9dAdGKwSQ6QpGX0YPkjCD2SM+Dpok7wz3uZHU=;
        b=apc8qBemkcQOLXJDwlNZvVJX66yLW1V0ajvL65TuILySzKWJFd/+Osxg0QwJlMCRZD
         a43gUXoxLaklSLd/+jDCnvsLiqUrrLcygzXoIGgbnNrBuj00fQSLc/B05TGtmY/2DUTY
         np1Y/cTUUwN6btV+X5dLYvnsHktJJxJ7B60fayIjeKEPUCpRbDM04L0MiPWki1PSnHCD
         301zl0QzdUVAp3X6ldsRRjy63T5Nmv3v1SsIhkdjGpbtVp72kver5EFzqSNOdKlbYgrm
         a26DgIBFS8Pcl3i3iKerSAh/QOBCmSB0Zyr+2D6ArnidXl1XMelJhRt1fn3c/YeSfUi5
         jCRQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCW3jOBxU+VcEXPyJrtNP5nYE/9mQNUrRx0UHhfvbfFk3E8GkgWcrIM8ys/FZVLCc8OE6cPeooALJBbOSxKWJCrcILiozE3ylEYM
X-Gm-Message-State: AOJu0YwAYLyTs8+WaUo/Dohg9Wt+8mcJRj6OfVDxfQZUbN1+7qH0N+t5
	JkUWAVVueSAxyqjdCJxKVZKgIgVGbLCt9W+KFuxUkV8YRuIwFwf4FO3lal/fySQ=
X-Google-Smtp-Source: AGHT+IG7TVHKPriLN10Wm60PczVyeah0CW1uk/wT+U+tpPIbZDa9oDxd63p5aCkk+CXiQ3slUANrIg==
X-Received: by 2002:a05:6870:310b:b0:21e:58ab:9069 with SMTP id v11-20020a056870310b00b0021e58ab9069mr1482634oaa.42.1708687993132;
        Fri, 23 Feb 2024 03:33:13 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6870:91c9:b0:21a:c58:97b5 with SMTP id
 c9-20020a05687091c900b0021a0c5897b5ls750258oaf.1.-pod-prod-03-us; Fri, 23 Feb
 2024 03:33:12 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVuBuZPjxRPYl+XOGqjS/4vwFfBIp47ETcwd9W9u1TCAYsQKhZLGEcH/irEzQVBvMwTvq4G9akLk2SHQDUReQ1kmuEsM3txyrA3XERhcGoQ0ktq1CA=
X-Received: by 2002:a05:6870:f722:b0:21a:34e1:bfd3 with SMTP id ej34-20020a056870f72200b0021a34e1bfd3mr1594263oab.25.1708687992410;
        Fri, 23 Feb 2024 03:33:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1708687992; cv=none;
        d=google.com; s=arc-20160816;
        b=jRWaiC+KuFCo96WJ6lAO8rxZv58jtQ3frc9Hh10JfaVgIRNz8tRRKUWmZRWw8u063x
         Ig6Sl5B23GDVSfsm5kaqFhRnB1udepg58cyAoGPm2FScdIkAer+QzkVdL3hIYJouPZ6q
         pgoGtuxN2xAsg5tcFFbG+EOVxt07K3wWTDw4Vn4BZUfs7H9/SDsNVPYL/k37bRXl3G/0
         lGkBAOjx0TYn3MCdp9XNLUm9pfDLVYOm1F2820ljM/JLVfcsi1/bQ12u99soBEJKRluJ
         VDOzmAp9nFl6DdphYSAm64hIvUCPF2qmqs9RZAiRCEJj3bMMiplNIq1z/rdOYOZiAQox
         0JBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=9h0+bx3zthge+WeKL+aA0IPLg5OAqc1qQAdRdk9O8X0=;
        fh=9YocgPeBmmUd0pYVDY9Wwnft9Tq+rR2+qdjYqRmsWjU=;
        b=uDHsV/v8iyMdAB5tsB6/p5DEoKxNco+dTDYek4jbqS9ASj7U+qUdLFQ/axtbClf3t7
         zWBKCrRzsVuAoIfIbc0ZOPUeTGCbg0fp8bMRfdY41NloDzvLwtYKHoHc2sr4O7vZ/EDx
         JEXKwvH/J4pjOv8Mi0SJ1DEuuQ7aPnQFwOCj20YcFeuJhx8kYiEv5nyLRSO9LDErwvqx
         1jK462D8Kd0Qt6u0dKjK8Qr4BMvtL6rLz/V23U2SXnHuCAqO9+G6mWtnjuh7+ZS/gtzb
         1U8zEVWP47bJzdryO2YNBc9gP/bXG0+3O4fXyw09v62HS64Wl4dc7VGXV6kjC3HSn9xR
         XGRg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=efIK4Sn9;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [139.178.84.217])
        by mx.google.com with ESMTPS id lv23-20020a056871439700b0021f3c38382csi1853064oab.230.2024.02.23.03.33.12
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Feb 2024 03:33:12 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) client-ip=139.178.84.217;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 3D96D63460;
	Fri, 23 Feb 2024 11:33:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8F131C433F1;
	Fri, 23 Feb 2024 11:33:11 +0000 (UTC)
Date: Fri, 23 Feb 2024 12:33:09 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Zijun Hu <quic_zijuhu@quicinc.com>
Cc: stern@rowland.harvard.edu, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH] Bluetooth: btusb: Use right timeout macro
 to receive control message
Message-ID: <2024022341-rice-worry-c99b@gregkh>
References: <1708682416-8664-1-git-send-email-quic_zijuhu@quicinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1708682416-8664-1-git-send-email-quic_zijuhu@quicinc.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=efIK4Sn9;       spf=pass
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

On Fri, Feb 23, 2024 at 06:00:16PM +0800, Zijun Hu wrote:
> USB driver defines macro @USB_CTRL_SET_TIMEOUT for sending control message
> and @USB_CTRL_GET_TIMEOUT for receiving, but sierra_get_swoc_info() wrongly
> uses @USB_CTRL_SET_TIMEOUT as argument of usb_control_msg() to receive
> control message, fixed by using @USB_CTRL_GET_TIMEOUT to receive message.

You do realize they are both the same value, right?  Why don't we just
change it to USB_CTRL_TIMEOUT so that people don't think changing this
matters?

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/2024022341-rice-worry-c99b%40gregkh.
