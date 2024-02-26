Return-Path: <usb-storage+bncBCUJ7YGL3QFBBYG26CXAMGQEJMLD4BI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc47.google.com (mail-oo1-xc47.google.com [IPv6:2607:f8b0:4864:20::c47])
	by mail.lfdr.de (Postfix) with ESMTPS id C986D8669F7
	for <lists+usb-storage@lfdr.de>; Mon, 26 Feb 2024 07:19:13 +0100 (CET)
Received: by mail-oo1-xc47.google.com with SMTP id 006d021491bc7-5a0883e3debsf657809eaf.1
        for <lists+usb-storage@lfdr.de>; Sun, 25 Feb 2024 22:19:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1708928352; cv=pass;
        d=google.com; s=arc-20160816;
        b=bpGrNi7/d7y61Uoe64x4I1Tx7UozZ6gpOmQWVcmMLvuiJUOmNhjTb+e+FX4gN/n2FD
         pwGnO85T0T44dGcrT8sDosgH7s5h/Srh9948JKyYUjo+1+QJv4b3o8JHGyyL9T17mF8D
         tzToQjOk3IohueRECX2hXakF44FcyCm1y6KEjRp0Li3H0qWoknpQtHKHB6y7aMmgBhGO
         NO1XApIlAtSijy+6a5Lc9W4xlPeKMbp0Dx/FIN9AVcbfX8QQXmPCg3OJVy77mD55chv1
         9uKDSGBbxdo7RX/PG92YoCmhI10W1xcLnVPJbCxnGOGsRcU7GO5JtiI4/16527/RkxnY
         a3KQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=6LUX1jU+2hHaDVHqiqvEPnpMbXyJDo0LB98+24G65aA=;
        fh=K3AHgA0VU2+2vnJUSUdXeOBCCV9fvreh/eAMj5VPsog=;
        b=SSWghtU4DspFI1Wu9mBdj/xYklliF22tSm6QRck5KP+028RTzPC1TQKLX7DYyXRz+8
         WIvcMG1bsrdiXcYZa+Nw+O+CNhiWXGu+O1851EFu0Dacr6C8mxnkGCgveeb1ZPXn2+IZ
         EEdfHludZK4u8+HRduInc1kgmlI+zx/JNcczBF8OzG2gQ/PY5OVI5/wMINLBhaD51Lqw
         lFnN6hyvqNh4p7nkVsm1y1gdWwnZt4fNOs/BJPDOc95hLG5phZ5HGcOREOvfjbhDcx3s
         Lt4kyoV77/GaOrFA4Ar40K3VHseq6kShxLeFiBZXtHJqB/FlF4xzZUgnsJLkPy8dGpQI
         u6yw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=OzMnqHJ0;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1708928352; x=1709533152; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6LUX1jU+2hHaDVHqiqvEPnpMbXyJDo0LB98+24G65aA=;
        b=cnn4/6V5iwJVtTzNGwwmhvIy1YPs9pgo/CS15DgUf89G7LjTs1zduI7dakQy35LOkZ
         DLJTchW/nxe6Rqw4rvJrXvpPEfUIsEnxzKV43238Nu88/bR68Zc5DhGVkMYZJadZnYUu
         jF44rWIvUkhYlhZIVhZ4JVg8rff0PWQCGApAE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708928352; x=1709533152;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6LUX1jU+2hHaDVHqiqvEPnpMbXyJDo0LB98+24G65aA=;
        b=u8om9KT5dABjAs4/rxGwSR6rPQ1234VTWqbh4vWWXDBP/ls33n+FDTmH3RVWFgfhwV
         qs9FGjp1h/NsZ99HBC/xsUfLM/kpqBgfPyU87vzDQIO7b1PlibfyR/XG8M5buEKyDP20
         nhmpELxuXiQbZwnUq3CwNs1e7e9SPjF6XcjujRGCG6NOF75f3uh2cW7TDMKVc4voLhQS
         JYrXbqownp944i7Xr60gzddWjcE/2GSCplalLMp8veuH8Rz4L33ePTyQ4XaxfeyDMLzO
         Me1Pcyo6F79bVZa8hLU3RIfWLx5FGflY2huRyDXqTkJbz3owIFB2i5dkefZJluXZBn1B
         LILA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCV6/4y3uFg4b8YkVVzdKhAvJvKeF5jI1yNyZt4wr5EPGJiMyOQAgtuwlCip5ijly4TlBmfXBFUIgLdTFPt6/NZrYqpgy5TZULDl
X-Gm-Message-State: AOJu0YyrSrFzvJ8n11IBDSAJbnKSztA32nHoOXbdG8gvhl7hNp3BUdC3
	xoVUweWp5k8ZpA5ii5brdMlI6N21TsQ+D+yCU58kRsL+PCHvXT3/J+tYr7yLoPY=
X-Google-Smtp-Source: AGHT+IE0COU13jbS6hhkmSwPNeid2uwYV5lm9ogK43aeltR7/ISi4OLXB6o2oUWTe9wNVg+uWx52EQ==
X-Received: by 2002:a05:6820:2294:b0:5a0:6501:77ac with SMTP id ck20-20020a056820229400b005a0650177acmr2823204oob.0.1708928352409;
        Sun, 25 Feb 2024 22:19:12 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a4a:4bc7:0:b0:59a:268e:a43b with SMTP id q190-20020a4a4bc7000000b0059a268ea43bls77695ooa.2.-pod-prod-00-us;
 Sun, 25 Feb 2024 22:19:11 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVk0GAGtdr5EYEfuRM5vWz0Hd36kftAKLG/SyBGn8BPGCzkA6bVDXr+8A0Q2E1qHhp9dZF0p38eQrAUjnTo5AnZrZwUpuanjUeput8riNEtVNJ59cw=
X-Received: by 2002:a05:6830:15:b0:6e2:dc35:fd1b with SMTP id c21-20020a056830001500b006e2dc35fd1bmr2634410otp.11.1708928351606;
        Sun, 25 Feb 2024 22:19:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1708928351; cv=none;
        d=google.com; s=arc-20160816;
        b=oPWoK/u490bP12nzRqk7gFCuRJP57cyGIe/fZUaAb0H26c0/6vUYyDMGsD7pAtXQtP
         f47Y1AKjdaQEtYnLsbeBfvQ7oS5DMrlNjp3nn9gkJfO6wW5gy31SUNuJG+ZXKdMykbcx
         d0poUfhdOPe3Gj3RH1KLesTIJ/lUuYHij8DtsIc5R8HJoZzFmU3jBVwNy0FtqurmpDac
         Qpm9/2l2tEijFQ6ezjJoMczomP9efzC7LXxKkbNlvTMH+KOu3D2zmGVLxzwOfONOzrwc
         +UMKIlfpEkgw0IDRdYmtqnL8I3vx5xOdbcLLszchdduflxM95ouq6j95H1ZmiiT6a06D
         mOmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=K0RX7TGmE2j6eUtffRzICyVCoMTMCILQ4HOJk5G8mPc=;
        fh=TNOWJpwO47ASknP3yhGI4w5W5g8UbyqT+2Mojn5RMy8=;
        b=KZnPcwisrOasHQBDlfAnhbslcRvjifJfatrMuhKMZLfMxjvkERmgEsu3YGYQufe+X8
         MijZHSQ9iDl/LuLs6FzD5w6s+76/biY2M0+pR9m59xRZv8hFWs4KvAaKSxzhtt273oYX
         DeWH3YjcXo0wJ6pV9pSqOhoMdgaz3ff5XRMWyU5QvzNtCnRwHX4Pgc/Fa2YU6gUYzYZY
         hTzgjsvxEkssHQgH/OsYeKZ5YJndish0cJDU4dloEDlVgNApNlau/wlv/n3kD1ZdnpoV
         fRZ55hOtW1a0t/4edlVgTtMXYO08P0jFVMN8jUlDnSCY8rI98QrRjb80kt2o3mS64/Ra
         udag==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=OzMnqHJ0;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by mx.google.com with ESMTPS id ec25-20020a0568306e1900b006e4a5d30ee4si16188otb.271.2024.02.25.22.19.11
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Feb 2024 22:19:11 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 433CE60AFF;
	Mon, 26 Feb 2024 06:19:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9446EC433F1;
	Mon, 26 Feb 2024 06:19:10 +0000 (UTC)
Date: Mon, 26 Feb 2024 07:19:08 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: quic_zijuhu <quic_zijuhu@quicinc.com>
Cc: stern@rowland.harvard.edu, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH] Bluetooth: btusb: Use right timeout macro
 to receive control message
Message-ID: <2024022601-amniotic-perfectly-f767@gregkh>
References: <1708682416-8664-1-git-send-email-quic_zijuhu@quicinc.com>
 <2024022341-rice-worry-c99b@gregkh>
 <bce66ef7-efb7-4bbe-9d84-d363f046963f@quicinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <bce66ef7-efb7-4bbe-9d84-d363f046963f@quicinc.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=OzMnqHJ0;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates
 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
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

On Mon, Feb 26, 2024 at 02:01:12PM +0800, quic_zijuhu wrote:
> On 2/23/2024 7:33 PM, Greg KH wrote:
> > On Fri, Feb 23, 2024 at 06:00:16PM +0800, Zijun Hu wrote:
> >> USB driver defines macro @USB_CTRL_SET_TIMEOUT for sending control message
> >> and @USB_CTRL_GET_TIMEOUT for receiving, but sierra_get_swoc_info() wrongly
> >> uses @USB_CTRL_SET_TIMEOUT as argument of usb_control_msg() to receive
> >> control message, fixed by using @USB_CTRL_GET_TIMEOUT to receive message.
> > 
> > You do realize they are both the same value, right?  Why don't we just
> > change it to USB_CTRL_TIMEOUT so that people don't think changing this
> > matters?
> > 
> 1)
> will optimize this change title if this change is worthy after code review

It's wrong as-is so we can't take it anyway, so yes, please fix.

> 2)
> yes, i noticed both macros have the same value and carefully read below code block.
> 
> include/linux/usb.h:
> /*
>  * timeouts, in milliseconds, used for sending/receiving control messages
>  * they typically complete within a few frames (msec) after they're issued
>  * USB identifies 5 second timeouts, maybe more in a few cases, and a few
>  * slow devices (like some MGE Ellipse UPSes) actually push that limit.
>  */
> #define USB_CTRL_GET_TIMEOUT	5000
> #define USB_CTRL_SET_TIMEOUT	5000

And so your changelog comments are wrong.

> 3)
> these two macros are introduced at the same time by Linus Torvalds with commit 1da177e4c3f4 ("Linux-2.6.12-rc2")
> below is my points why it is better to keep current two macros than unifying both to one USB_CTRL_TIMEOUT
> 
>  point A)
>  we can't confirm that sending always have the same timeout as receiving for various devices, it is easy to adjust individual
>  macro value if sending potentially does not have the same value as receiving in future.

As it has been a few decades without needing this change, I think it's
safe to make now.

>  point B)
>  current two macros defined by usb.h has been used by many usb drivers, there are more drivers need to be corrected if macro NAME are changed.

That is fine, there is no issue with changing all uses in the kernel
tree, right?

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/2024022601-amniotic-perfectly-f767%40gregkh.
