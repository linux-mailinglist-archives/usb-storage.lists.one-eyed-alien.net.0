Return-Path: <usb-storage+bncBCUJ7YGL3QFBBQ4TWPBQMGQEMXV4UKI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x647.google.com (mail-pl1-x647.google.com [IPv6:2607:f8b0:4864:20::647])
	by mail.lfdr.de (Postfix) with ESMTPS id 13CE6AFC41F
	for <lists+usb-storage@lfdr.de>; Tue,  8 Jul 2025 09:33:25 +0200 (CEST)
Received: by mail-pl1-x647.google.com with SMTP id d9443c01a7336-234906c5e29sf53779795ad.0
        for <lists+usb-storage@lfdr.de>; Tue, 08 Jul 2025 00:33:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1751960003; cv=pass;
        d=google.com; s=arc-20240605;
        b=Qj5MdU8tBEdmeRtHBSYQOviWeYhFjcxAtJ54ieOYUwHiTR1fuQz1QQYzSESohm4ZIw
         x/yVc/LYLJC//EF39tc6loMS2SRzVzoN+RV5A4l8c2EfxkNw6LUs6z4ba5VBcXXSgjb/
         vADBn/yEyhJVHF6NC2LXtZUKSy0drcmVLNoTGfRBSL/7QwvHYKoDKiWD3UKQmIKWjmzR
         xZe9/41iIUgycY/sTfSf4XRc/KlhybfJT2O2QJC4UU2rmx2W4AQRyMAZ6dR1Tz7/4jUu
         R7U/U8Nfr0WmekG66nYJWXXPZ05HnS8BSngQm6lO0joaUJoi379HTXKaxXA9yVdc6SOr
         Mn4w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=L+1yqIIR2t4RUCDGUcED1hRqi/PX7Rl25ExaSigHrOg=;
        fh=XmtzsNSUGYSXnPTzIa6sOOcJ6c+ljO10UaiUgL4el3A=;
        b=hRcL+CHhpmEXJ4Mux4pvwtNksrOrgjuGU1kPAUX2yyuA3CcLQQNNDikUZ9i/G0chry
         JuqUTmYXJGujnlewK1fjOQNI7w5K8iL5bSW1yk+oySl5aL2gRdwc+wjOj2DbwPllcrdE
         2Y0pXzL9wlsK6iQBSHxCfeC8y1ErGGxn8HXLRDaLru3fg073n5HGP6OQOpotuECiEtA7
         re8seXM6w5Nuoi/i5ov7TxTy40WBg1r5bFSj4dAeEzeMhzqwPNCt+1CDuazxtIwPyCAo
         jAsh6MUcE4gagmuKwip6rPkCTOyjV5sb0wGfFNLFMsvMoNp+neVivQnvYZ89sNwGJmaW
         FVfA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=x1UKY1my;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1751960003; x=1752564803; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L+1yqIIR2t4RUCDGUcED1hRqi/PX7Rl25ExaSigHrOg=;
        b=W1L8uWL2tLiEqp/iwDlmKB1HzzQGK3oVJBg/O3Mrc+wq7Z9EUvWHz5dPFyBSZxlv1B
         blhuvwpYXJya7a8gfn2YCdIatfXvmv2aRW71+eSAOsbDfNSdF5JFOxSt1eE0xnpZ9rLC
         zbPdksBT9xG4Hzy26baKAZ3Izhmn9pLdi2f5s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751960003; x=1752564803;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L+1yqIIR2t4RUCDGUcED1hRqi/PX7Rl25ExaSigHrOg=;
        b=janI0iEfRfbo5l7sp/cB1J0xeQwUtOpCxU0o1+44F21AIzId9CAVRZ+36XXV3KFdmM
         Qdi4inh2FCHK6/vE1gwvT+7ctejKy3oRp+sG5MR2DSm1pJBvCok0twi1ZjUdQpO93tWc
         NeicSSoYgX9z8PRUEdoMzD7+O6D4hnvoAGml2FxZigC0rXCyST7E2J4qcyhLgNcw8BVb
         59wqzuvG1hQ4CoqZjUlC021Zig+SIVGbszq4fbjvb0ZMcCBmYYoAFVW3mLZWBURyz3br
         m9zai+q6wDw7FurV8XAWAlru0Hi8C+11CEBvX6OSc1J23PBazXeyIpd4RJaqFMcpKvVG
         2C8Q==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVc4Jw/tgyKWALb4Qlvx3eYm5kw1ZQjbJtjGZTwW3P77HIYLkImOHBYwYFZSGQqSXn9Kd5a1g==@lfdr.de
X-Gm-Message-State: AOJu0Ywcmd93O5nSET4iXV8GOfhjLQy4kZOOoxI+o9mJjDxOjIrhEW0m
	nbbW3q7ACyMs0mlz7d+Fy7KKZeQJ6MlNrdT+8qziHcIF3JGWtseKMntSatmkRZqmFlI=
X-Google-Smtp-Source: AGHT+IF/no61EIGtZeZortGjHt/h9IXZkD19LxCFiBnP6h/xw0H9BXffqqUqmnRj/VAAya/V8SQoLw==
X-Received: by 2002:a17:902:ffc7:b0:235:f4f7:a654 with SMTP id d9443c01a7336-23c85e2be38mr270634535ad.22.1751960003426;
        Tue, 08 Jul 2025 00:33:23 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AZMbMZfWfAuHIvT3YmRuQNQDWgHxmiGKzl7gzGqP1iXR6CBBCw==
Received: by 2002:a17:903:2cb:b0:237:e6fe:2370 with SMTP id
 d9443c01a7336-23c89debff1ls37879305ad.2.-pod-prod-06-us; Tue, 08 Jul 2025
 00:33:22 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCV+3/iyQKaZBaW3nv+cUvrTbWq/f0xWunQ53bPuVenSBWSXtiV2sov73IOC2EIlq5qRaPhVuh2YVJwQwQ==@lists.one-eyed-alien.net
X-Received: by 2002:a17:903:1b4f:b0:235:eb8b:9968 with SMTP id d9443c01a7336-23c85eae7a5mr236463105ad.36.1751960001916;
        Tue, 08 Jul 2025 00:33:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1751960001; cv=none;
        d=google.com; s=arc-20240605;
        b=RptsFCKXdZn4eI2hq4vjpDZ5bqQrHOdx8jpfylD+rgkYMYqK7otbr+IsAclNgrzuyy
         Q4sc9BVr98BpDW8oVFP/vGxNGnxXzPRr8UNIOHGykAmOY5UBEa+2EsstloKY31WmvjPg
         KXOCwYtHcyTr7e7M1g9pRL2U+7V6vQBD/CbfasKjVzn39HAUngh0A1G3Vu5dhwBbh2hz
         N5aRuu7UDGTutOli+I4c2H01lL6FXaWf4WjMVvLDlrvgfIy8FEW9GABXIk+bUbouq1DV
         Ya5jm5aLKNJ2RI4CDyu4LP2mbP3KvCv+fSfclrpvFsC3YZdu+6vms3nQ37/rCAp1hfZr
         XQNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=xYh8jsITIDbBDGkAjfavYzZZBdaiqUfJlbacZouT0ck=;
        fh=a1YKTi9pHnywQ2XBEVGe7xjTioXL4dc+m9vRhIedUME=;
        b=Uh/HgRi7aYUY5HcNsQcvllrIrLov+4MsJ7LpUPMQ3SpRSTbXIipJZqDMcwss9rH5kM
         k5jm4x4dSm7RZ/TDxwcnZL9FogX7uXTyTYXIjJyI+1fmWQcm3S0L027xMM0lJSghn9WV
         H90UHaHadHIP7TjXuR9T5M71aFMT8J5Ei5BTPO6Py4SLLwzOZ6eeLQTDsd3Q1mR9Hre0
         ZiPoOa66AA+k7BiJBh0vOLylbCHNq5XEll+UrB7kq5iS5CMezPV/jPhu8z86eu2L2ZRe
         4b8OpF6Gzti41wfkXfCXXj9uE7tUPHyfDUno1AL5S23poObc8tq4ewB4h985DU0m7j+K
         OVNA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=x1UKY1my;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from sea.source.kernel.org (sea.source.kernel.org. [172.234.252.31])
        by mx.google.com with ESMTPS id d9443c01a7336-23c8454ad89si138994085ad.400.2025.07.08.00.33.21
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Jul 2025 00:33:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 172.234.252.31 as permitted sender) client-ip=172.234.252.31;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 9C4D343C61;
	Tue,  8 Jul 2025 07:33:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2ADF4C4CEF1;
	Tue,  8 Jul 2025 07:33:20 +0000 (UTC)
Date: Tue, 8 Jul 2025 09:33:18 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Jie Deng <dengjie03@kylinos.cn>
Cc: stern@rowland.harvard.edu, linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH v2] usb: storage: Ignore UAS driver for
 SanDisk Extreme Pro 55AF storage device
Message-ID: <2025070810-nintendo-congenial-95d4@gregkh>
References: <2025070422-punctured-opal-f51e@gregkh>
 <20250707062507.39531-1-dengjie03@kylinos.cn>
 <2025070702-unsigned-runny-62c6@gregkh>
 <4bac2d53-0e5b-437e-92bc-12921a8efd8d@kylinos.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <4bac2d53-0e5b-437e-92bc-12921a8efd8d@kylinos.cn>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=x1UKY1my;       spf=pass
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

On Tue, Jul 08, 2025 at 01:55:47PM +0800, Jie Deng wrote:
> 2. Regarding your question, before submitting the patch,
> I conducted the following tests:
> 1) linux + x86: The SanDisk Extreme Pro 55AF device can be recognized
> normally when using the uas driver. USB controller model (VendorID:
> 1D94, DeviceID: 145F,Chengdu Haiguang IC Design Co., Ltd.USB 3.0 Host
> controller)

So it all works, great!

> 2) linux + arm64: The SanDisk Extreme Pro 55AF device will report an error
> when
> using the uas driver and the driver cannot be loaded. USB Controller model
> (Vendor ID: 1912, Device ID: 0014,uPD720201 USB 3.0 Host Controller).

Ok, that sounds like an arm64 issue we should resolve.  Why can the
driver not be loaded at all?  What happens?

> 3) linux + arm64: Add the parameter "USB-storage.quirks =0781:55af:u" in
> grub.
> The SanDisk Extreme Pro 55AF device runs the usb storage driver without any
> error
> and can be recognized normally.

Let's track down and fix the arm64 issue here please, and not paper over
it by saying that this whole device will not work well on all arches.

thakns,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/2025070810-nintendo-congenial-95d4%40gregkh.
