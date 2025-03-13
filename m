Return-Path: <usb-storage+bncBD64ZMV5YYBRB5G2ZO7AMGQE4CJMCRI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x847.google.com (mail-qt1-x847.google.com [IPv6:2607:f8b0:4864:20::847])
	by mail.lfdr.de (Postfix) with ESMTPS id 493D2A5F881
	for <lists+usb-storage@lfdr.de>; Thu, 13 Mar 2025 15:36:38 +0100 (CET)
Received: by mail-qt1-x847.google.com with SMTP id d75a77b69052e-476b2179079sf20753011cf.1
        for <lists+usb-storage@lfdr.de>; Thu, 13 Mar 2025 07:36:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1741876596; cv=pass;
        d=google.com; s=arc-20240605;
        b=I5dZgLCpTdg6c0z0S9NtUc9DW6iI2ge2qbkHjnDsvQCbNUFbbGN/JRgHjsimj9a8jV
         tyZKeN0JSy5QMuZsvQPOCV7Ws/eRN+TjCAP++kHq6Ud3wB/siTi0obIVq89cLpykNq8Q
         aGLSWbszBO9Eq73cUc6xSNWW55hXWpugqJXvlPR9ZiDBdeVhe4Uy+nx7k0eqTYqw7G2W
         YOcjvc8ipaNCzmp2apX6U5QZm4VkvDAQEQ4TwrhHa0zGg9GxFvzBFh+qgm5JlKwzpAuJ
         XULk5u6QPWh16b1aWqXdQIhXR8iFyM9a+I43t3ma7jaNH9Lc/TEx5uiNAspFN+nzygi+
         VY/A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=D+ZOH1I/uepEXTCATlvACGAqIwXW1FdoFY6KuzHSVZU=;
        fh=ou7JXU6JuN/FHWJcfDWD/kxcw6OyVfnHrfIql3eJbKw=;
        b=EoymcqQO/Czk+g00Sa/uNzqxXAy5aj2X8OcLSfZeQG+k5Nh+fTdqRy3d7vrRiLDqoB
         9X4ODSgQsOHa5cgfAmThLsLeX5JzUc0D6aKTIPnvT+c2osLqt2Ji33xHGx0pbzhGXj9E
         mcvZ3fEav5aykJAslItjPk70r1pZ7lBxBgr6SEby4m9aJf7xJ0tOtkwlU2qckoBe/ioX
         rhWDaIKqA61I1ll1ExLiVRsKGiG1maJIubIt+6hxvuXbf48WVBwuDrrEeMzc58pVWeOd
         s1CR3UrGOoiohtTz12+HiK812vRUsd22xybU/SPpjvAgn+DxCJ1ApNS0IQoOwBxgwPJa
         cV5A==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b=UNgYBNsb;
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1741876596; x=1742481396; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=D+ZOH1I/uepEXTCATlvACGAqIwXW1FdoFY6KuzHSVZU=;
        b=V06fFAKEXY8TQ3E8J0y4jPUUB296Tm0n3HUOtZ4TKvS9SGTOtBmvugT/3hCTBxSMa/
         PloxBDYZmmcWoEo5teGkwaKhXQtLcicvectGCNxef5GAhBSHNoj7N+hHM4Z9x/iljV+u
         q+JEyyh7KZ/SkpcJnSFf5BR7hxA8qNa75kYRI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741876596; x=1742481396;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :content-transfer-encoding:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=D+ZOH1I/uepEXTCATlvACGAqIwXW1FdoFY6KuzHSVZU=;
        b=ZhrXTFwPcnSMwhmxnQLuxlxWdBNrE+E9f7xZaWMdcVE4fwplMwQwnfEqNgYhVPcYOy
         8vRNjCFiyVhBNpBBuUXYr56vwplWujlZ1A+qzcKUkCW4cuAawZdVyCspZJRcTRa0MgWk
         KN/V8JQ+bzrkQOUZV46CLRp2wqcJPbvRhFVbt4SEKAWIoBTIHa3vVdL9CYu7heVRjmb5
         e+CnUchhqd+E8YXi1Z6SiEFz9Cyq4saljZgInFZCewZc7tPc7VhQzapE/5BuB24JwL+o
         2CYH0OjR2MrH/WZNC7f5cYDVKbSY3fa+vxsgEVXPIUqfXEVdOaeUYJnFuun4x560Gybb
         xcdg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXmufdJUmb3/suJf4RX8bmLg7NJQbM9IlcB/OwR3JAH/j812TNvsRKTVM0+sFC7LHBSxlk6fA==@lfdr.de
X-Gm-Message-State: AOJu0YyUpuLE9/XW+O62X6xpwieiRc+ZHST3xA2rEpsh9QtnUCahnyGk
	Q3jTIik1l6pwsMKwcSFC7fFJZu1IhrlWDq362x/tXD7filJqP4a0c8tRBvSpSP0=
X-Google-Smtp-Source: AGHT+IG5w7DM+WEqstPz5C3VHa12psHmR5QjtGNlr+Xvv/L+VqXjvXKVKl3MTPiGX4+PKF1FV5MndA==
X-Received: by 2002:a05:622a:2b0c:b0:476:6a3d:de2e with SMTP id d75a77b69052e-4766a3de6fdmr326529141cf.14.1741876596444;
        Thu, 13 Mar 2025 07:36:36 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=Adn5yVEQuDBACJufdqJmgJ5iteEyY4uv4qklxpN+weFOWM7JZQ==
Received: by 2002:a05:622a:1349:b0:476:6bc3:c758 with SMTP id
 d75a77b69052e-476b7c3ba7als24007601cf.0.-pod-prod-05-us; Thu, 13 Mar 2025
 07:36:35 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUaNjln2liVtp19f7D7Gqi83stgHNJKvHT7q8QHV49F9W92ZhwfxOuwikjSOmoIx82cgmwmLxRkBYUqDQ==@lists.one-eyed-alien.net
X-Received: by 2002:a05:620a:2b43:b0:7c5:4750:9304 with SMTP id af79cd13be357-7c547509392mr2634125985a.24.1741876595357;
        Thu, 13 Mar 2025 07:36:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1741876595; cv=none;
        d=google.com; s=arc-20240605;
        b=ZZ3gHSNHW9UjtQ62P1K5+q9gnFdA6CEDPtUkW+dc71ePCVFy50qoCOnEFxwQDVePyO
         /LuGF3LpRyZV226MqPblDfxB2QVi/sdo5Q2KGGPxc9rgVMgZKJTMwYvKTo5/scsnyPdB
         OjcEg0EhL+u4qfRO6XColT/2P5f2tFikqHou6q5neNjP8IB+yjDx3uWU+oUmpiir7iwy
         o1PY95ifC+q4sGIdMCHk7jUYfdgTzzhq5bLTJJV2YfGWiGGJD8SIMjFGFseqbWB0BU5O
         ffW1pVi9KgW+usFWhIvGn0fjlfuS5sGC/RNmjFHaDZvzcjLT4P7yZZu4GtkxIUmNf60I
         dNxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=1+GC/kQTwmLeftS0ziJ99XGRNFCxec8W85lzFkXDKks=;
        fh=X+P8tu3CDayHcYpzCi6mL8x+XPOzG78WtW8Pjz+vIw0=;
        b=lg7yJ3Ctg0X691GeVDhigePL+dV5arW9CH/lG6Lx3ZkDNDP/C67JjX+JfDWVLHCWTl
         rKv8wZD65syzGcepES+WP1kZk90cMx3FZhM5nazeWxNTRC3U3TwRUDIKuS6Jb1Qj5gJn
         deG1gZ0X40NNLiqnkeX2jse5SY/ng7VtJ0pIF5PCERSjfkl7Fx6rsXLlaRrGiqz4Br8i
         PC2OWlAwH0NfWqVVg2RuPS7Ccx8XBNapdXOTKGfbA4fRIeTOR+IMk10AGAGoskZjp92O
         vw1cmufZ0t0OGaEOJX3qAnKxRX+csw5do01sMB1AOXUZYp+QCSgETTzARTku0c3xMZrR
         MBLA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b=UNgYBNsb;
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id af79cd13be357-7c573d97656sor141977485a.17.2025.03.13.07.36.35
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Thu, 13 Mar 2025 07:36:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCVERguig1/vZ/4g1zHP9sOTU8gIdC4eAMUckqaH8bvJK1eeAQ2y8FgarvYfKWQsQCJNs1/Mx16Bgl8WLQ==@lists.one-eyed-alien.net
X-Gm-Gg: ASbGncv7llzpGn7LFPpHtMb698/qqgv0YjFGKsqZM96fnjbvmrgpuiwRIv9FYdd1kjo
	CgjYVcJw3gT8dPf5sTZ+DcT0XgO4N/wwQZXetAvmks7bXT0uctz5KfegRr2aID1M4TX11LLXtdF
	fdoCD/VA5ls2V95orDyQ5zpttu0BxbIl4RasWPqJDatxCkA261s4wYX05nb7jVyhzR8BxcLtYsD
	QaP4G2MIeaIr51KpQPcG88OywvUq6efN6SDXA7t4K1zH2BTQ/JxWA55YNw2EGSK38EsXp9UzJEg
	LLhV3horgQEU1AtQEjvVUJLQxY1Y5kX3o3DvfHjT006N+CH65neJ0t9oV9KCrvI=
X-Received: by 2002:a05:620a:439f:b0:7c5:6396:f161 with SMTP id af79cd13be357-7c56396fac3mr1848651985a.49.1741876594973;
        Thu, 13 Mar 2025 07:36:34 -0700 (PDT)
Received: from rowland.harvard.edu ([140.247.181.15])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7c573d89b9asm104149985a.99.2025.03.13.07.36.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Mar 2025 07:36:34 -0700 (PDT)
Date: Thu, 13 Mar 2025 10:36:32 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: daixin_tkzc <daixin_tkzc@163.com>
Cc: Greg KH <gregkh@linuxfoundation.org>,
	matthew dharm <mdharm-usb@one-eyed-alien.net>,
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org
Subject: [usb-storage] Re:[PATCH] usb: storage: Fix `us->iobuf` size for BOT
 transmission to prevent memory overflow
Message-ID: <814316b6-013b-4735-995d-b6c0c616c71b@rowland.harvard.edu>
References: <20250311084111.322351-1-daixin_tkzc@163.com>
 <2b6c4aa7.b165.1958f6b7a3a.Coremail.daixin_tkzc@163.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <2b6c4aa7.b165.1958f6b7a3a.Coremail.daixin_tkzc@163.com>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@rowland.harvard.edu header.s=google header.b=UNgYBNsb;
       spf=pass (google.com: domain of stern@g.harvard.edu designates
 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
Content-Transfer-Encoding: quoted-printable
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

On Thu, Mar 13, 2025 at 08:12:20PM +0800, daixin_tkzc wrote:
> Thank you for reviewing my patch.
>=20
>=20
> I'm sorry I just responded individually.
>=20
>=20
> Of course, when the USB device and host are transmitting normally, us->io=
buf size is 64, which is enough for CBW/CSW and there will be no problem.=
=20
> Howerver, we encountered a problem in the FPGA verification environment, =
that is, the DWC otg controller detected a Babble Error, and we believe tha=
t the processing flow of the device driver will cause the risk of us->iobuf=
 overflow.=20
>=20
>=20
> Regarding USB Babble Error, the DWC_otg_programming manual describes it a=
s follows:
> |
>=20
> 3.8.1 Handling Babble Conditions
>=20
> DWC_otg handles two cases of babble: packet babble and port babble. Packe=
t babble occurs if the device sends more data than the maximum packet size =
for the channel. Port babble occurs if the controller continues to receive =
data from the device at EOF2 (the end of frame 2, which is very close to SO=
F).
>=20
> When DWC_otg detects a packet babble, it stops writing data into the Rx b=
uffer and waits for the end of packet (EOP). When it detects an EOP, it flu=
shes already-written data in the Rx buffer and generates a Babble interrupt=
 to the application
>=20
> |

What is your point?

Are you claiming that the DWC_otg driver doesn't handle packet babble=20
properly?  If that is true then you need to fix the DWC_otg driver, not=20
change the usb-storage driver.

You have not done a good job of explaining how us->iobuf overflow could=20
occur.

Alan Stern

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-al=
ien.net/d/msgid/usb-storage/814316b6-013b-4735-995d-b6c0c616c71b%40rowland.=
harvard.edu.
