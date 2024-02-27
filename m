Return-Path: <usb-storage+bncBD6LRVPZ6YGRBY5C6WXAMGQE6EBWOAI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf48.google.com (mail-qv1-xf48.google.com [IPv6:2607:f8b0:4864:20::f48])
	by mail.lfdr.de (Postfix) with ESMTPS id DAA6086877F
	for <lists+usb-storage@lfdr.de>; Tue, 27 Feb 2024 04:05:08 +0100 (CET)
Received: by mail-qv1-xf48.google.com with SMTP id 6a1803df08f44-6901226a144sf12966306d6.1
        for <lists+usb-storage@lfdr.de>; Mon, 26 Feb 2024 19:05:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1709003107; cv=pass;
        d=google.com; s=arc-20160816;
        b=0zGReB2T3Wuwy5dIzw9+OAxcgHd8N39fGVz1OOw9khcjn1z2fmclBxMEszzEzJ4luI
         GUb/wyaPZl22kU52e+BTIPS8MI7/ZCXPLd0u7/MEWPxEbE7+/Zq1Lc0AcEG+Ez97Ugez
         OXqqgH5fZmz0CAhPNY9fbJpYKdYM8zF96WrvBapUVEYscuiSSW5pYraDqlQbzJVB12xA
         75NVmh+qQd54C6OTCqhjXOE/WsIiU3QG6xAntQd48fh0Cd+m/gt2QXQDGoJDzD1Q5vih
         2FWpQLztIzroIwjGKw+3G7BNsQiLpixo8CZ/Ssc9dEMo5s2wf+nMonekjoZ/V3TYN1K3
         SF2g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Tu5RKhvkOborgg1zlLuWboEhkRRgz6z7lZrH/RkHdpk=;
        fh=iRp3dG71R9kclFpYe7ZPKh4XOJ1qNcoxNhswZOCZXp8=;
        b=N+IFQdUYAd1ZotGXdOmnL5i//0hOy/Iiz0Cce+X9TnSTfRw5ShLzhelAu9KCKuniOS
         lUegJDGxx79EP3JkNWYCHaCWqch7x2sm7l+9Gz2GLPulSgQn+Mkl8xJbanVCe39GbT8H
         F37h3RepWFIXleVm9W1fptKGLm6oPlUH8IASTtUQ3dPDie8PYFAiouiVLNqqA4Ohpic3
         jrPbC0bSdOXD/rkTMrW9NEmcNtPzPB9WNfom9OA8qjPdnzMxcZBtDavQofliB2LAfFH1
         YI7GK/wnFMpcBMZeBlIG3M8BfnXj7MhcIpf9VYlPFhbEqtx9icyEMCiXdMa7xXLpmj0M
         a9BQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+65cf0a42@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+65cf0a42@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1709003107; x=1709607907; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Tu5RKhvkOborgg1zlLuWboEhkRRgz6z7lZrH/RkHdpk=;
        b=Qxr8PJ3j9hVsqVd3i7t96zX1U1axRRKA8KLAdLEqkVdX/aCvPf6HalIwZpOOus6iZo
         B7pKZyA15Ns1LRqMHBkI3tpnKenQ8QRm6AdCwo+dK64D3Kp6dbRMVCH67deOlq1ErIam
         /q+x2hWzEGDFJ8yvaRX+OsMniOCKFptvmjz6g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709003107; x=1709607907;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Tu5RKhvkOborgg1zlLuWboEhkRRgz6z7lZrH/RkHdpk=;
        b=Mr5mV2IsqMqwtDMHR+3RQJZaPNc6tZt2I2D0ZtihQcmSbjRh9aOx/ElkkqzdhFkvPq
         i4IbKfvs0YOvvLH9j53Q1aqGLIbl8k2hvUjqbFE/aBkPsgUrr3tIw+XeRmq3X10T8+4H
         lWfeVGXMzvLbTYpGzvkAT+RnOMPXaI6D8jIhbOb3zON/soZ+iPxjvz9m65TFAjdGsG/j
         9inZlK4J3U7JDUN4482/gbn6p5qf1z5e8j6rU7dcov2XAZ/exDj/3AB67dlOri2XvUpV
         Dl6xS5duOt0d9ePpJ+YZ21uDnc1dFrxHMB8QdMjjRW03plDHu8tJ0zCfhqZQBEJLVSEY
         o0ig==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVcUMScwqRPXPlaCVlXNtqTbEmZJVRVptasLK/YglrZoUWc87Mnwd90OCswDJw9NZfwd+2D3K09NBLSCmp3xV3IKNYfVmzFHmIQ
X-Gm-Message-State: AOJu0YyYXMIdUCMcxp8Zx4daPyDoK1aIYD0mENPoLK26tZGdt1BrDpn7
	jJYRaDLy33hjvQEHVpNPJoLCJwWPggkZ4L+AyqGX4ZovW1+TP6EA1rkRZpSfkLk=
X-Google-Smtp-Source: AGHT+IGmR68hHkypmB8Xu4IUQ1QqFXhj728b3R9eeodLuTUxRzlpT1SDk6ukaZnKECm1ZWLypqAkXw==
X-Received: by 2002:a0c:e44f:0:b0:68c:5027:4cf9 with SMTP id d15-20020a0ce44f000000b0068c50274cf9mr834886qvm.62.1709003107485;
        Mon, 26 Feb 2024 19:05:07 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ad4:5c85:0:b0:68c:d864:e37c with SMTP id o5-20020ad45c85000000b0068cd864e37cls4858918qvh.0.-pod-prod-02-us;
 Mon, 26 Feb 2024 19:05:07 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWpG1A7MLTGJuWSiuIJL4s7YRNtCMgSYYaAGYljczinqpl0x0fWd0555n5cUl676QEuVYSnDYjHgTHKZVqujZmgteMTE3ayQZTHI19yZF2LLphxHEE=
X-Received: by 2002:a0c:dc02:0:b0:68f:d852:e9c5 with SMTP id s2-20020a0cdc02000000b0068fd852e9c5mr988699qvk.17.1709003106707;
        Mon, 26 Feb 2024 19:05:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1709003106; cv=none;
        d=google.com; s=arc-20160816;
        b=KpvqLbi7/Vt6dBXIVK+qt5P5UuhZLtpTkimQWXxFL3X9iUT/Ly8kydBHEj9u7SUp5Z
         1GCX1dl91/Jv9lSA4QD2p7AF8E7SpAIb1jKuVkc7I8b/414zikTix5mXm8ybiK5kSeNR
         RK/y3sV7ID8TwIbO1DgQeaiIvb3haSzpecEpEBKthA1aAdTu6nPRGkLHlaeaRyy+JDK3
         2h+dudhsuKHauIANfeppVih0EUuEz7tmqTD3abvEEFsF5OddZWyxlofPaqSKjpZGc0EW
         dKAaxOo4T7RGH2Nrkpm+cI/OzLlc8K5aAX9bGEzgDKD3iEFQuabdJvcOJkF6X8mLfRV0
         G2lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=VoiQyhKNA8JDdMRbRos+L+eLXbzTOZZDmOzzwrbiYJ0=;
        fh=08I8dGZyHAvNjvHvWNP7jP9GAYyzRCB5QOlyjpZTyXQ=;
        b=EwHVnuWseCuBrtl2aSpX0p/bISFkkotk9jSwW5pweY6VGq6aFHeXd2Ze65VsW/dX5i
         YzZzRSWJUR95RcNMLoEd8vlRZN1f3BRfxXc08LALfiXz4D9i8kXAYVyPwi4LJZhkPRnP
         L5r/c0IZFdswB5Urnb+HxLgF75tzOhBWr1Xre8zer3Y/M9H6+gsBLRhXhlibHxCyMCoe
         3d8iAf0MeXzFh5itlAFTSbl4tncnNhduJgTutycK0RezXonEASQCdxscZ0yOPVCwmzgt
         vS7jUsaRf7ZObjPh4hU1NnZYufmDiZzJ+HGuw2QPTNzJPM9xfNFHew7MVqPcoXADFBrs
         DeVw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+65cf0a42@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+65cf0a42@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id ge2-20020a05621427c200b0069019f40c97si1563701qvb.194.2024.02.26.19.05.06
        for <usb-storage@lists.one-eyed-alien.net>;
        Mon, 26 Feb 2024 19:05:06 -0800 (PST)
Received-SPF: pass (google.com: domain of stern+65cf0a42@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 753798 invoked by uid 1000); 26 Feb 2024 22:05:06 -0500
Date: Mon, 26 Feb 2024 22:05:06 -0500
From: Alan Stern <stern@rowland.harvard.edu>
To: "Martin K. Petersen" <martin.petersen@oracle.com>
Cc: Oliver Neukum <oneukum@suse.com>,
  syzbot <syzbot+28748250ab47a8f04100@syzkaller.appspotmail.com>,
  bvanassche@acm.org, emilne@redhat.com, gregkh@linuxfoundation.org,
  linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
  syzkaller-bugs@googlegroups.com, tasos@tasossah.com,
  usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [syzbot] [usb-storage?] divide error in isd200_ata_command
Message-ID: <11ec2091-71c2-4dfb-be36-0cc21be32109@rowland.harvard.edu>
References: <0000000000003eb868061245ba7f@google.com>
 <99b0fb1b-37b3-4da4-8129-e502ed8e479a@suse.com>
 <9bbc5b63-33e3-44de-8bce-4c59dcce5e92@rowland.harvard.edu>
 <yq1cysi4obq.fsf@ca-mkp.ca.oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <yq1cysi4obq.fsf@ca-mkp.ca.oracle.com>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+65cf0a42@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+65cf0a42@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
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

On Mon, Feb 26, 2024 at 09:46:39PM -0500, Martin K. Petersen wrote:
> 
> Alan,
> 
> >> in isd200_scsi_to_ata() because it must not be called before
> >> isd200_get_inquiry_data() has completed.
> >
> > It can't be; isd200_get_inquiry_data is called by
> > isd200_Initialization during probe before any SCSI commands are
> > transmitted.
> 
> How do we end up with bad inquiry data (or rather bad ATA ID data)?

The data doesn't come from an actual ISD200 device.  It's from a 
deliberately faulty (for the obvious reason) emulation in userspace, 
created by the syzbot test code.

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/11ec2091-71c2-4dfb-be36-0cc21be32109%40rowland.harvard.edu.
