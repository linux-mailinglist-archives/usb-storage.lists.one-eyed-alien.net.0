Return-Path: <usb-storage+bncBD6LRVPZ6YGRBMGT36UQMGQEUWV2BZI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf48.google.com (mail-qv1-xf48.google.com [IPv6:2607:f8b0:4864:20::f48])
	by mail.lfdr.de (Postfix) with ESMTPS id C16947D5722
	for <lists+usb-storage@lfdr.de>; Tue, 24 Oct 2023 17:58:41 +0200 (CEST)
Received: by mail-qv1-xf48.google.com with SMTP id 6a1803df08f44-6557c921deesf65867976d6.2
        for <lists+usb-storage@lfdr.de>; Tue, 24 Oct 2023 08:58:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1698163120; cv=pass;
        d=google.com; s=arc-20160816;
        b=wGuh+qAQKjR5ecgQ/Z6WBEhTTbq7Ayr/Q/J0qYLcivxF1q5I3w/kb3+cwe+BpG0+zF
         +jfBkAh5RdUzb8kcsKjQ4GllYbLH0+V7OM24k3CvfzgWRZF3K+wzopm/ihGVTbdpVGEb
         uxTZvH88gRBz34cCnj6jRCUe/o62ulSjfkric3Vp860kX+FPDfXsALHhbMNat6TP94+J
         XC6DYH7ND7L1al17anxDaAGy4s16oSRunl2KYYuE1nkDgvNWmpi9X3CG/muYWvv0LgB6
         c0PA8WeXXHTx2T6yW2kKCLKNSo/YCT+PTpKB47tqv3GsgGa+elsT4DQXXLvPenY29aRc
         Y72A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=xVQHb9kCcVdAhjWRGTIglMdJp0nVrSrPRqGMaSgzIto=;
        fh=R7bZq2w8c5xv2AD1vfXo0jgdy9ffThbPPPFLhY5prN8=;
        b=cz3XL1QUB5ohXEKkQbR2V37XFDcikkE7UpAkMg0M+2EcWL9HB4dsX0fx23uX7y5WdN
         MAFofw/iQKZUAH6Jmbmt55TFVjR5uRg03mJ+3k+j2PfDmiQe9BWFeZUTkmcZKip0pSgZ
         ZQAh97w3Z5NEo71oItqrzzUvmJT6sTwAdRw8v27lgQ6rtQh5fA8VwARljB06XWSv18rj
         8WChIc8Bemj4aG7FVRktFbGfJC5hzQaypam0Ew5Yi60i4NgYr1kn61+SWyC+8fNNybXu
         6QK5q1GTg/o22EDgAgoDxC8QIr2gxfv3f3XOm4dq4mCC4U8boC+UbcmaFn1B0II98ruG
         72jQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+652539ca@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+652539ca@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1698163120; x=1698767920; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xVQHb9kCcVdAhjWRGTIglMdJp0nVrSrPRqGMaSgzIto=;
        b=BiwxJwJ0lQZX3QNHsNQcNqAfB8hq9JMIa3cwqVhfLkazV0B1qzWrqhc0xU5bQ6GIcz
         0xDJagGKidPSa/3Q8OIH1ahSS057DyG2l47er8XCC6ubxBIaaKq/anaNb9Q7xFQKPRZ8
         a41GiRpQ9Hmu0o6xF5ZjQ7jTJAL9M6imgkbgc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698163120; x=1698767920;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xVQHb9kCcVdAhjWRGTIglMdJp0nVrSrPRqGMaSgzIto=;
        b=WupOTn+hDKTZOS4V9v7u5FfhnM92yntFAj9i8xQThAsRLW0n0flmC12rbliiNpO8ho
         T+kfZBnFxscOnrIHvj08nNcAUYS7OcdUwHVfooga/OpzO1GPEQVdtpePMgyD5TUlznag
         Z7Ccd+yxywXfmzpV62RqoZfQ8y2VUmOT4/kIMhSyDEV6P2a2amGDh27h5db7a35gIHjY
         vRosdYZK81hz3MGxoWkawNfWvevY5kDfnR8HK8pGyJhHf00JDNSK3N3E+Dq0qjMLcdPL
         Edyuh+Y+2eVoOxweJz+UpZGwwgSRa6X0uy6RPilZ7UF2eh2P/NdPqafe5LX6g6gXmPWL
         CFZg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0YzwcPnEATqS05mYrsWbfeLGjEOAS5jJdPLZKTv1u103m4gpu1b1
	BhTJGEEPPKzPS+TBd/M1uHj9qg==
X-Google-Smtp-Source: AGHT+IETPnDQSEmV/UZvkFGCjHSZECAlzRJCvKDWPlkhxvIhQ+JKXKOpYrPaFg4N0nzfyuS6ko3F+Q==
X-Received: by 2002:a05:6214:2465:b0:66d:1217:18fd with SMTP id im5-20020a056214246500b0066d121718fdmr16579516qvb.26.1698163120659;
        Tue, 24 Oct 2023 08:58:40 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ad4:4e71:0:b0:65d:b9b:f319 with SMTP id ec17-20020ad44e71000000b0065d0b9bf319ls1573673qvb.0.-pod-prod-09-us;
 Tue, 24 Oct 2023 08:58:40 -0700 (PDT)
X-Received: by 2002:a05:6214:1d21:b0:66d:19b5:9a3 with SMTP id f1-20020a0562141d2100b0066d19b509a3mr16397382qvd.29.1698163117908;
        Tue, 24 Oct 2023 08:58:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1698163117; cv=none;
        d=google.com; s=arc-20160816;
        b=CcuFG+2mzjhjkbiX+FfhcAPp0fgSDnP6aE+jhOYW2QFrUNxqKyXqg8t5ZfmioiebWH
         YUfy1tIcaamp1gRKaSA39BkPJY5VF10r4qJFc7peJpZx0WuBpoZVMO1CsEN655FJeTId
         wKZnjSorBAgaZziphKkr1SWbZdLcj4+KSOROVjNFjq1xNJxZLXfmbgqfgGXVkPMCfRDy
         2u3qcwYGjCAp/Jbd5wm2wZ/xmBdJO6/kzo/gcKEoFBAL5Ipuuz49j0Fm/CCAo2zAq/Y+
         xreYx247i0mXeBO73xI+gpZI/l1ko6bYqCXYvWdBxLknZd+bHgYL0v2s8NG+7B/Ny1D3
         sqmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=wPdb22R5YPROIH7SYh/uf5P+vcI3LDFENSGig/NGvSo=;
        fh=R7bZq2w8c5xv2AD1vfXo0jgdy9ffThbPPPFLhY5prN8=;
        b=xMUF26xHP0Vo1lUi+B7w+K6H9LjGg7NnlOfoci+8+LmltmXHvTIzW7O7Kp4cpn9Gvc
         V+j3sAXqY/5OREWEpMDiupmSrlM52skoGMlysC83W4zXX/tuh5cXtQ62U1cr0Ts9MtJI
         i+YWbLGZGDHQKy2ajlz5BsWFKgyPxye0ASn2R3R4qFw+AxcT3NC7PMySNwaRIixXrboC
         Pj1UhpimboWxo/3MJemuRUCm/gcYOOJ7zK3Rcd9CwtBDmV1jjE2vecDGaAzGZis0vjX3
         Q63vcwhJlzOfHtykNqPsP5mbq4pyc+wlr7o/6gMokhiOJks+MzwSlmS3S8ZeankqK9Wr
         O+Pg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+652539ca@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+652539ca@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id me13-20020a0562145d0d00b0066d101766d5si7774286qvb.569.2023.10.24.08.58.37
        for <usb-storage@lists.one-eyed-alien.net>;
        Tue, 24 Oct 2023 08:58:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+652539ca@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 461759 invoked by uid 1000); 24 Oct 2023 11:58:37 -0400
Date: Tue, 24 Oct 2023 11:58:37 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Cc: "Li, Meng" <Meng.Li@windriver.com>,
  "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
  "usb-storage@lists.one-eyed-alien.net" <usb-storage@lists.one-eyed-alien.net>,
  "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: [usb-storage] Re: [PATCH] usb: storage: add shutdown function for usb
 storage driver
Message-ID: <5107f6ca-e972-4af1-a21d-6c95778969f3@rowland.harvard.edu>
References: <20231023054111.2744872-1-Meng.Li@windriver.com>
 <33bd0779-bfe7-4c87-8fe6-ea8455df3b6b@rowland.harvard.edu>
 <PH0PR11MB51918DD50651DB6BE937BEA3F1DFA@PH0PR11MB5191.namprd11.prod.outlook.com>
 <3fe5b43c-a5aa-4c6a-8614-03a4d9dd53e2@rowland.harvard.edu>
 <2023102428-zit-quickness-9b73@gregkh>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <2023102428-zit-quickness-9b73@gregkh>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+652539ca@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+652539ca@netrider.rowland.org;
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

On Tue, Oct 24, 2023 at 05:45:40PM +0200, gregkh@linuxfoundation.org wrote:
> On Tue, Oct 24, 2023 at 11:35:19AM -0400, Alan Stern wrote:
> > Okay, that's a different matter.  In fact, I don't know what is supposed 
> > to happen during a clean reboot.
> 
> Define "clean" :)

In this case, I mean what happens when you give the "reboot" command.

> reboot is a system thing that happens before the reboot syscall happens.
> So which are we talking nabout here?
> 
> > Greg, do you know?  Should we take the time to disconnect all the USB 
> > devices during a system shutdown?
> 
> In the past we have not.  And if we switch to do so, we might get some
> complaints as we would now delaying the shutdown process to be longer
> than before.

Yes, that's what I'm afraid of.

> > What happens with non-USB disk drives?  Or other removable devices?
> 
> It would have to come from "above" in the device tree, so does the PCI
> or platform bus say that they should be shut down and their child
> devices?

Well, the PCI layer invokes the HCD's ->shutdown callback.  But the 
usb-storage driver and usbcore don't know this has happened, so they 
start logging errors because they are suddenly unable to communicate 
with a USB drive.  Meng Li is unhappy about these error messages.

Adding a shutdown callback of sorts to usb-storage allows the driver to 
know that it shouldn't communicate with the drive any more, which 
prevents the error message from appearing.  That's what this patch does.  

But that's all it does.  Basically it creates a layering violation just 
to prevent some error messages from showing up in the system log during 
a shutdown or reboot.  The question is whether we want to do this at 
all, and if we do, shouldn't it be handled at the usbcore level rather 
than just within usb-storage?

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/5107f6ca-e972-4af1-a21d-6c95778969f3%40rowland.harvard.edu.
