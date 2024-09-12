Return-Path: <usb-storage+bncBD64ZMV5YYBRBQ4FRG3QMGQEI3HZ67Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf45.google.com (mail-qv1-xf45.google.com [IPv6:2607:f8b0:4864:20::f45])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C997975E75
	for <lists+usb-storage@lfdr.de>; Thu, 12 Sep 2024 03:24:22 +0200 (CEST)
Received: by mail-qv1-xf45.google.com with SMTP id 6a1803df08f44-6c518ae847dsf10770216d6.2
        for <lists+usb-storage@lfdr.de>; Wed, 11 Sep 2024 18:24:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1726104260; cv=pass;
        d=google.com; s=arc-20240605;
        b=MqKJuLpTA9CIhAc7Tj9k+3jnRcKt4dABpLo/zfrFFqKuJAkspLtb/GOLDS+D0fKBoy
         +YY0cuCn0TxM7NigpW4eCYioxNOLuVrOI9WYK8zbxDtLPUHUJ2mr4udpHMh2RzmB9Ee+
         XXMdITfmK+VtNQDJQZzkPcVKYl0jDe7C0QVYBU7NlmO2TD0eXMwI0eP1BXVZgUv4A4BX
         MncWVZbZjjzFGg0ArgcyEDsOTOF/cjmfyzIb2E3RcwsPGxalRIzakLHQ+h4699OC/0CL
         llZgZZuUCEzpxlsnmTMID+ERkiqYtcH7hc53O9Oc3rMA0TzXJxyjdOFSTuBaX9j/HG62
         CMTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=HYfnXsDso8RLQeGhHfKtWfUdQ7ANSawOQsFSj7Vbuns=;
        fh=nuWcHnWE8mzkxN0O7Rx9vDY+E+GhUV8uRa9FbZghXN4=;
        b=lRz+rdn7Ptiv3ZgLgu1zCcRoTV54pOFEeLSe2SBZwof0LdRi9gc8hiVz4bf1wFJ/1S
         +KP7X9uPNAQJtuMkKWsxKbG1dT/dMWjDAoWdw1phD4ySkN6am50LZ/yXbFLCYydbFoBi
         ZRAbeh3xpBqUS4NTYsrhh+yS4U7rN5M9u7DUk4uRp0pTi20VItYHf17OfSzwJpjVNmEP
         PzuGQf431NPb/DmBavmZCrLDOApuOW6ExAs/3wZes6RoX6uS67SxaGa2pqr3dX/FycXe
         mca+LbVQljkVVZzk4CQfG2DLs1znb1KfuK899RI/HcB9c98+FDDRwATd+PneVc/CQhni
         EqWw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b=J1+HPYIN;
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1726104260; x=1726709060; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HYfnXsDso8RLQeGhHfKtWfUdQ7ANSawOQsFSj7Vbuns=;
        b=fCZRn0+4jtD1aoT+uMKW93AqJ4sLUwR29ww9YwyxNIHTC/PyjvqYOQfO+1w3iblAY7
         zUCsffLO6YleSTNkwDXKmeyY2bWo/avfJxV3ySPdfsHFDcvQIhU6kS5Suk0f2M2e4Hb1
         Vb+RXdIi0k2APVr6wtBtvmZnQVMWGXYYICufI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726104260; x=1726709060;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HYfnXsDso8RLQeGhHfKtWfUdQ7ANSawOQsFSj7Vbuns=;
        b=rUNC/TUZaacrZYWg0NGpAEv1QN3w9RsuJ/z8rHupepy88g3UBJyBw9NrqImo+jqOBj
         ChPKG9Xgpakew2Cnm7XK6IyrfAAZwjx7+Y2pmjvTuAYaaEGrOshpKaAuG0iKZlthiiN9
         ozrL6kSIozfHgn1Kxgajcgdecmm5Vecq1ZhqMNhhvdqC2jT+hxcQGoaHzH06YJMDBW0h
         /7lJ0c2Qlty599C3Imh1EwQtK2C0hdja88sORg48IVFqi7f+zEZStKGxVKopnyCwBef6
         d4ThIyoypdqHNLziYnODiXXH4V+PK3aqPm6mBQoqk4YdSVOSoecH97twnWlVQaF34ULV
         H2lA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXlJzEPM9whm8BI3dbeVUEtsn/QOOuExjxGA/JAGxJ0+RhBcVQ8adaI6bELbvyhJb2b2MfyHA==@lfdr.de
X-Gm-Message-State: AOJu0YyTSs/esMeTHSyn/IPQtwVNOvcGFLZK78/UiCDEMOBEvWPCjqPG
	kP4QqFblWVKsdTAQ0rIhCsd+Z47m/QVjkVFFyON48yBsUv1ZHm5Q8WrUKlJPDLU=
X-Google-Smtp-Source: AGHT+IGN/XX5hf0HSTdsZ9GSOxlUoCHFkZkQmYL9SqNH6G/PKsSDr7kRVVpBA6pPR4aOxXJUvrNeag==
X-Received: by 2002:a05:6214:3a86:b0:6c5:297c:da5f with SMTP id 6a1803df08f44-6c573570b58mr25259286d6.33.1726104259912;
        Wed, 11 Sep 2024 18:24:19 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6214:2621:b0:6b5:da50:ac19 with SMTP id
 6a1803df08f44-6c573547f96ls12513116d6.2.-pod-prod-07-us; Wed, 11 Sep 2024
 18:24:19 -0700 (PDT)
X-Received: by 2002:a0c:f40c:0:b0:6c4:79df:a2e5 with SMTP id 6a1803df08f44-6c57351aa2amr18433866d6.20.1726104258938;
        Wed, 11 Sep 2024 18:24:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1726104258; cv=none;
        d=google.com; s=arc-20160816;
        b=hFUjhcPkZxbbKhD/lnkzMKxlIsHvJHvjilAxjN9JPlwaUii2jEurVGt9TWiSGQyWT9
         XgEkfiaQNkMx7pQxMgFK3nd1d3XN8Ddr3pH+beKWsEjWXJ6UmElRgZc2XFMe2DLxYqGR
         d2sBeWRcS5mUO1zzqs68kJvcbFqU/K2sc0isOHmG8mcDBQ60PmyEfBmgieKpRJgnxSEY
         yfDRrmR7Ek8lMmfhSOeFwit7HmDk5idXeiD/KXLS2ihb9YOoilsraBF+CRnNBlQjzn7c
         Wgyll/qkIvRpxyasVpEnJN2YTBf7l5jvCgbhphp+z5oHlWM8DjRXjg2vWzB1auuOBhmT
         nr8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=UOBcbGANHO6y2IqBbxXHcJn4a/lLLiljFUakrQAD5yA=;
        fh=ykBzKrbroFdCC7rROu7U7sVx/p2e7/SDOQyLNBypRMU=;
        b=DxFPMzE+W8o1xB4Bzwplw081gwRO2Fp3YcOVLYkMoP/Ujft/6hhdpownCF23gkIWi9
         C9PXJy+JIYHeTowAQ4j7ymBUrFN4na+RF8HwTKEvOB0Af+waPqCj+jtZW47FmqcZhM+L
         n5Pb2erXwORUw7obo2TTcwZQI+18aJdS2e4xHIsX/JNnxPeL+bWnP7n961td21A80OOO
         W/s3mWJeq0gHGw6UZ360CvYFvBQUliAiTDydKRMtcBWnafTem8XfpqAUCuqeSZmTBVIV
         /S0QxR8ZpyYUtgwX+9aljF4PeuCmE4I2ZxlgOqWkQ397a9Mr/g76PlEsK7gdjKrJvVwc
         QzLw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b=J1+HPYIN;
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id 6a1803df08f44-6c53474c754sor67579536d6.6.2024.09.11.18.24.18
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 11 Sep 2024 18:24:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a05:6214:33c2:b0:6c5:64b2:71c3 with SMTP id 6a1803df08f44-6c57352e2a7mr24620406d6.25.1726104258431;
        Wed, 11 Sep 2024 18:24:18 -0700 (PDT)
Received: from rowland.harvard.edu ([2601:19b:681:fd10::ff03])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6c534786129sm48099016d6.135.2024.09.11.18.24.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Sep 2024 18:24:18 -0700 (PDT)
Date: Wed, 11 Sep 2024 21:24:14 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Abhishek Tamboli <abhishektamboli9@gmail.com>,
	gregkh@linuxfoundation.org
Cc: usb-storage@lists.one-eyed-alien.net, linux-usb@vger.kernel.org,
	skhan@linuxfoundation.org, dan.carpenter@linaro.org,
	rbmarliere@gmail.com,
	linux-kernel-mentees@lists.linuxfoundation.org,
	linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: [PATCH] usb: storage: ene_ub6250: Fix right shift warnings
Message-ID: <46a5f308-5d0a-4e41-82aa-5bd9cf81d35a@rowland.harvard.edu>
References: <20240729182348.451436-1-abhishektamboli9@gmail.com>
 <e72cc56a-3066-4cb8-848d-bfe27a48c095@suse.com>
 <ZqkpOQIjcBSAg8rC@embed-PC.myguest.virtualbox.org>
 <5d7870b0-6b63-430b-8885-2509b33dc78a@suse.com>
 <804a6d40-73a4-4af6-944b-95e9324d7429@rowland.harvard.edu>
 <Zqp8vbbIC8E/XrQY@embed-PC.myguest.virtualbox.org>
 <b35a344a-018b-44ae-975a-7767a3d5b6ec@rowland.harvard.edu>
 <f5d4711f-9b4a-457c-b68c-c2e9aefbe4a8@suse.com>
 <890e0ed1-25c3-414e-9e8e-f5925fe8c778@rowland.harvard.edu>
 <ZuI5nptdk+BcXh+R@embed-PC.myguest.virtualbox.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <ZuI5nptdk+BcXh+R@embed-PC.myguest.virtualbox.org>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@rowland.harvard.edu header.s=google header.b=J1+HPYIN;
       spf=pass (google.com: domain of stern@g.harvard.edu designates
 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
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

On Thu, Sep 12, 2024 at 06:15:18AM +0530, Abhishek Tamboli wrote:
> Hi Alan,

> I noticed that the patch has not yet been pulled into linux-next, 
> even though it has been acked-by you for over a month. Is there 
> anything else I need to do on my end?

I don't know what the story is.  Greg?

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/46a5f308-5d0a-4e41-82aa-5bd9cf81d35a%40rowland.harvard.edu.
