Return-Path: <usb-storage+bncBD64ZMV5YYBRBLET267AMGQEVOJNCEQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x748.google.com (mail-qk1-x748.google.com [IPv6:2607:f8b0:4864:20::748])
	by mail.lfdr.de (Postfix) with ESMTPS id 847AAA631C2
	for <lists+usb-storage@lfdr.de>; Sat, 15 Mar 2025 19:40:46 +0100 (CET)
Received: by mail-qk1-x748.google.com with SMTP id af79cd13be357-7c572339444sf540649385a.3
        for <lists+usb-storage@lfdr.de>; Sat, 15 Mar 2025 11:40:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1742064045; cv=pass;
        d=google.com; s=arc-20240605;
        b=KC0PthA/uQsVX8T5Etl6OlnTbTsZlE8X+X+d1JKxgNOyaEEhKAdY5fRA3gUb0YiVQr
         3gB/OjPrHQb2rxHZSTuqvkw4iTM+PZGYjUArkoljUR+qWOODEZwmswRSuf93J4MQACI+
         hdeb3hjdWFflAoUtMUOAYqZibcVLvaKXT1zy7A6GI/TIHI+1WeFiSfOuYdGROi21gluF
         A0xm4eZDn8syd2f7grfItyfcl2FJlQRnb4XD3zxlyu7i5Drb1s9C3iS45gAk5Cd3yZQ2
         VC68FPZgW3zn2+Aoll+HD5xONerj3WwsLyOfhoFHl+o8HMYPwGJ5ioFeGEGkkW5qjKii
         /7Pw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=gNe7jY/AE/mE3b3VVPmREeZM6yPE052pxjDcdXwVq1U=;
        fh=99So8XCkUeqCKdBMRzqQEqV3F/efBAv3WVVuyVet29A=;
        b=PHlLPz0J8L7VLLZT3cOyWycmPSLNto8tBY9MtTdeWm1iCtSeUSo9216QWEIGbim0ic
         zlKMn0yhvB+Qgpsx78e3KK1uvoXE+QKohheZXdzDR76g3lwDcpGSvm1fnlAts2ydLDBX
         D0nEsCDqH5/AXL6pFcumR0SePJmGvjgS4haP6THbcahUPjM5yeyNWYzRCpJAEBXItnOX
         wLWWWVpL0OU9+p7flxPQqlswYYCtX1AF7duHzkYZRFcBE+8ZEEM1gq++H57zUkn8dNp3
         b4E7rdQ7Ue9mBXb8Ft+K6Mn73sDyB4QdjuyrbshYh7bqKSi0zFw1eH9LgXyD/AVEPMI+
         W40A==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b=akY5zAJh;
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1742064045; x=1742668845; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=gNe7jY/AE/mE3b3VVPmREeZM6yPE052pxjDcdXwVq1U=;
        b=NFfTg4+pzQDPjGzerCLg9ADbn8AKS9dXrjySl9DbKZI37ybcMMjdC2GNTiblejEs6W
         4Ymw/tQKjPNAKM7fLq2mCi/RvRlO7++Pa/gRy55vycn9nSYAiTVQfOcJmCgaRfWFOohQ
         UAqKTIWFOcAO1U0diWzyIM2iXYr9EMX9+6n3I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742064045; x=1742668845;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gNe7jY/AE/mE3b3VVPmREeZM6yPE052pxjDcdXwVq1U=;
        b=Frql7OHZQMNp3q6cOTmivNegMKoECSjydKIfFAQY4mWBItwAVnwTSnPSY1lncuzf2w
         wnmY3+4lLygtGNWfZUunxrapqU/+4iDmzI9ziUhXjVLBMr4uAQSgX+y4UzXn6ZVwwim3
         EnpPoCxGZ2zYlToYQMRPznLkmBwFLitRV+x0kZlBcPo0lnOe2TspojrO3krDJnao6486
         OwfAtMrKTKVYBiu+XM52JJ/kfYYbD2j0ATrg0BoqxUCbQeU5kah6A8DuoKqKGYInvgQc
         e+Za6eL/wZkSoZEOkGYqag9wox4ZiuzMZPiiJ0/Rq0lGend3xP6FhL35S0jsy+KRufKs
         U+sg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUnOoN9ilMO/rOhSKrc6gOxkPS+B2XPZZO6ssOOlVHiWu9fZOcGG2+qdwAmiHbcDKlo5Qpslg==@lfdr.de
X-Gm-Message-State: AOJu0YzP7dbj8g/jy42hvJDkbBdKbQtlELoO72Q6nuA9CCgFZASvqrod
	Gdc4iVSzHvDkmjQjG/tUGEN6mk6y+xcoUCJrhwIBYYRwfRP7mnyHqaBggRI2YX8=
X-Google-Smtp-Source: AGHT+IHd1ggIxGdR5JQ3sx8MjVb6TsmoWfPHUBBmM9ssbUaRatzAw/wDAEUnBqcbU8Z75dfhCDxk0Q==
X-Received: by 2002:a05:620a:2a0a:b0:7c5:4788:a160 with SMTP id af79cd13be357-7c57c8aa9f7mr1075294385a.44.1742064045324;
        Sat, 15 Mar 2025 11:40:45 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=ARLLPALg41Sk0k8joLmYQlgg3XzkBNHGvrsCdJwit0AcPIOAuw==
Received: by 2002:ac8:5756:0:b0:476:91a5:c821 with SMTP id d75a77b69052e-476b7dd0347ls59463381cf.2.-pod-prod-03-us;
 Sat, 15 Mar 2025 11:40:44 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXT8LcN18mV7ituQc1WO6Z9tqwukSh5bcJYEeG2hGInDTTGkcHd7G5T8/yE5Kx4S3LDuNBw88djaQm2lw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:620a:1918:b0:7c5:4a63:be9c with SMTP id af79cd13be357-7c57c7c0e5amr1074131385a.31.1742064043999;
        Sat, 15 Mar 2025 11:40:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1742064043; cv=none;
        d=google.com; s=arc-20240605;
        b=MR7WCR6+F4a9m/lPdrlYjYQFLu7Xv+lDpxGde+6X1UVxZFGpD0wWAXRg7D1ebHn/uX
         xg8nAuInWS374H/vYIGMhKpeiQtwUsYFUyE6BN4uPNdF2ir1Uaxw/BqdvoF1f/Xjgr1L
         o+f29SFWpujdFwCKRXC6MwiVpSRujQjIo3EeW0ZmvfuPUj86615PvUHSgCrkuQBdQrWs
         TqZP1ryjImc24TtCAUBwLyAQ/G7xM6rgf+dvhHpfKjT/VmGuL8DXpK4GQbYoEAtcn/tB
         8b3WU18na6plHMxvHADrjDgpI7SVdlcIKo9DEsndMl/3uSFQmgRmM3nDmKMbjIzMOyM9
         x4EA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=s87parI80M4+i1I+85i5e9n1/c46r0tZ/M47p6g2MOY=;
        fh=aZtbIbS4RypjIaATl0zjLQMzAIYVpEFCjwnUQeD/0Zk=;
        b=GaLN6hOqEK6I6dBSxKFcjr4HwA/8HKfi4xFJCppb/Dw68nwJBSHu70kgfNL7LPeNNU
         4N7RvvoYj4/OZbrJM/+4Smc29UO2HT9L3dw/SBQBIymxk6lKlzRFxFi+x+pzgKHeUn2F
         C1m/5/c8GKoHoey13Jgbl+si/CcIw4lDjyQGXcZNxj+Y05Z70CMHnVhny6CZr38oaJIY
         XCmfpXTnl29egIxjMb+ByVw/daNgcqNphzqvuSbs/gd65xAIloVF6IYPJzhUDNeb+Xtt
         zLtnBzFb6NYKfbXYlbaj41WjlXMjHLef8N4E6NJsFNLi/LULY1N1QQahDL9IEm2UeG9b
         ykaw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b=akY5zAJh;
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id af79cd13be357-7c573b98026sor521948385a.6.2025.03.15.11.40.43
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Sat, 15 Mar 2025 11:40:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCUcIGLMJdI1TK8O0HNJLIDdeoyeVHzKdM5cPLVlcMaoU+jurzDRgzWWtUV0nu5r6gG1+vbqHwP/vyyndQ==@lists.one-eyed-alien.net
X-Gm-Gg: ASbGnctENbTZwJ+xsKtNZ51o1DnmDwFwAZOc0PQ9ICfzQk3bdz2s3KACUFsWkcMQiYK
	RL75pw+ZCA0dilDDYZ6o+o95OXkBZ8GNrHGMYpuU1WC2tUeUh4AwCEDa5Gr10bYLBPOw97khTxl
	+8pdwNlOPaWq5cFZskAFcv2MIdBmc6OdQ/yrSfGkXczpweJmhcEk9sYd7eFdi/wytX3YeKbQAYF
	v6bsdbYgOsAnqsZn7GLSI+MpIL61jNHRlfIKRwb7csK9NFsF0eEg0xBaYp4+7hS8iSyK513agp9
	cvdqfjl6TUnYt29mpetF8IK77JXqZYE7JJFKU7UsjlROuQ==
X-Received: by 2002:a05:620a:4387:b0:7c0:c469:d651 with SMTP id af79cd13be357-7c57c8f2fafmr968770185a.57.1742064043676;
        Sat, 15 Mar 2025 11:40:43 -0700 (PDT)
Received: from rowland.harvard.edu ([2601:19b:681:fd10::6b3e])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7c573c7e26bsm399158685a.41.2025.03.15.11.40.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Mar 2025 11:40:42 -0700 (PDT)
Date: Sat, 15 Mar 2025 14:40:38 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: daixin_tkzc <daixin_tkzc@163.com>
Cc: Matthew Dharm <mdharm-usb@one-eyed-alien.net>,
	Greg KH <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org
Subject: Re: Re: Re: [usb-storage] Re:Re:[PATCH] usb: storage: Fix `us->iobuf`
 size for BOT transmission to prevent memory overflow
Message-ID: <6b4fe6ca-e18b-4843-aeaf-224ee01d3067@rowland.harvard.edu>
References: <20250311084111.322351-1-daixin_tkzc@163.com>
 <2b6c4aa7.b165.1958f6b7a3a.Coremail.daixin_tkzc@163.com>
 <814316b6-013b-4735-995d-b6c0c616c71b@rowland.harvard.edu>
 <1681f087.2727.195927b7ccb.Coremail.daixin_tkzc@163.com>
 <516c8f89-45f2-4d3f-b1e7-29aecfc8cd3c@rowland.harvard.edu>
 <6e125c5c.2541.195990d2daa.Coremail.daixin_tkzc@163.com>
 <CAA6KcBD=CbW6S8vZ-n2v4BuJfC03vuNPzAG-WD5AN5_mMjgUfw@mail.gmail.com>
 <265533ba.2e97.1959988d8b1.Coremail.daixin_tkzc@163.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <265533ba.2e97.1959988d8b1.Coremail.daixin_tkzc@163.com>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@rowland.harvard.edu header.s=google header.b=akY5zAJh;
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

On Sat, Mar 15, 2025 at 07:20:37PM +0800, daixin_tkzc wrote:
> I'm sorry you may have misunderstood me.
>=20
>=20
> HCTSIZ register only reflects the transfer size for the Host Channel (bet=
ween host and device). The dwc_otg manual explains it as follows=EF=BC=9A
> Non-Scatter/Gather DMA Mode:
> Transfer Size (XferSize)
> For an OUT, this field is the number of data bytes the host sends=20
> during the transfer.
> For an IN, this field is the buffer size that the application has=20
> Reserved for the transfer. The application is expected to program=20
> this field as an integer multiple of the maximum packet size for IN=20
> transactions (periodic and non-periodic).

In that case, the dwc_otg driver needs to use a 512-byte bounce buffer. =20

The driver must _guarantee_ that no more than 13 bytes will be written=20
to the URB's transfer_buffer if the URB's transfer_length is 13.  If the=20
hardware cannot provide this guarantee then the driver must work around=20
the hardware's deficiencies.  That is how the kernel's USB API is=20
designed.

Alan Stern

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-al=
ien.net/d/msgid/usb-storage/6b4fe6ca-e18b-4843-aeaf-224ee01d3067%40rowland.=
harvard.edu.
