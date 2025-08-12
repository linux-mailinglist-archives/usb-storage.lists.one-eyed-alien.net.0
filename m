Return-Path: <usb-storage+bncBCC2JRVCV4NRBKHE53CAMGQE7NVJB4Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x847.google.com (mail-qt1-x847.google.com [IPv6:2607:f8b0:4864:20::847])
	by mail.lfdr.de (Postfix) with ESMTPS id C0E54B23AB2
	for <lists+usb-storage@lfdr.de>; Tue, 12 Aug 2025 23:29:13 +0200 (CEST)
Received: by mail-qt1-x847.google.com with SMTP id d75a77b69052e-4b0add6d192sf91521541cf.1
        for <lists+usb-storage@lfdr.de>; Tue, 12 Aug 2025 14:29:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1755034152; cv=pass;
        d=google.com; s=arc-20240605;
        b=TU2ukqh9u/V5e7NM/+uISZdcJ200jh/0dOB6r37s0HElRGIZN4uAhksOcJQMC7wbf7
         JlrT8X9fAQ7IhoYVbQjSyxVZPyPmmCzDihzeNx7joOcZw0GeiQGXEWoI0U6ae9ieSHH4
         dKSV0uJ4Tit17Sy5yiMJZIifUTJsITT1gaOBSZU4TNP87lyOtBcrVU63r48g/SWgBMBR
         6IsXDP8nTzLo6HkmnxqAaTct5NHzg7WqM4xt4dz0msMi0Kk+uC/r02lGC+L5ZXMMS+ft
         A1S7wQqJAL78fh68dhVPLVy4K7+w2YBIfSqBye8mH7gO0/G1lEhFG9hQmEz3uqofM10+
         SZWw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:references:message-id:cc:date
         :in-reply-to:from:subject:mime-version:sender:dkim-signature;
        bh=89eQmrLC28FjdJxa3dyQQeyKM3B5CqxqP7hMhRjqEpI=;
        fh=Bj+LCLnV5E6qD7LcCZ3NUrhVXuDzNeHiOmuPuKcavy8=;
        b=W2mGF7vG3aQqpcQ4U0IlrOiWBHSj/+i70hcN83KxKZHDzq+7klACG44QcStWu02iVf
         EFDNzcesoHUEktrvLXxdGEypHsMLXhGEBKvD9OthtXzEr60fFG6dw89jr/03EzYjUkrd
         4lUclWQobEEGTE0OM7dOkNwdOH3wXezTxwASzCN8WMZ7AOQK//m6+tot50EF318ftFlm
         jZOdxSS6SMlOs3lSLIE98vmqBnuYJotAq+zDAJZIkBWp50b9ufr+lH7LMKHehIHkQNlx
         ILluyyjE0QjYWZkCqUKwYgeiOZ98UQvXLRY1KyoAZlAYpVu21QVGUv0WI+8+l2whPshU
         FjqQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linux.dev header.s=key1 header.b=U4qIh+hJ;
       spf=pass (google.com: domain of thorsten.blum@linux.dev designates 91.218.175.186 as permitted sender) smtp.mailfrom=thorsten.blum@linux.dev;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.dev
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1755034152; x=1755638952; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:to:references:message-id:cc:date:in-reply-to:from
         :subject:mime-version:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=89eQmrLC28FjdJxa3dyQQeyKM3B5CqxqP7hMhRjqEpI=;
        b=ebIayWktZusGmfrHi5qMF8T6awVthVC6UjIytcG3H/KwM9n0ya/2ehBzJv7Ew/FUfK
         Uxk9wPRPXHK4kAYMYvdcff/uYKftARbFYzs7bYjtuiXozzSZCP7KhEZCo1huELii/W0v
         9TqDc4fqkWXs5dyGCnaSr/0hSlvG3Kxvk9GJo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755034152; x=1755638952;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:references
         :message-id:cc:date:in-reply-to:from:subject:mime-version
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=89eQmrLC28FjdJxa3dyQQeyKM3B5CqxqP7hMhRjqEpI=;
        b=plw5gSpHqm5sF5B01p/4ScDNzmMSjGvYyx1Ln48F3onmoBBnEvNlba4GvUyFWQrT1R
         A/UH5+yB7o2e2fZ/YjeA9RD2TkioafLgTY4Aq1yePyg79JmpWevtdkAmSuZQxW4ypqSH
         ciFmRcbRf5IEpFljK9+DUoDvBnV9GW8UivWzP+HEGOzwEOjV8O172k88Q3+zu6fwTRBj
         5gmvCpA175mxUIwGpMHs4i3BoEgRBZ+iYq3m5f4+WzxG3yBq6mbLBbt6d5mxeZ6qYbKG
         kt8vGt3Ke2SoOYIEuE0n3T0ADsE5JYelxoaPQ5ekF5C5R3V8zmbzgD8g+xuIJE6PKhXQ
         BaTQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXU0pmGTfnKr6ofVmjuPM7e1OW9A9Ha37l6zZ3dinbG0h5eNgj6Hp+CKBHbnaw1IDmT3GNOjA==@lfdr.de
X-Gm-Message-State: AOJu0YzX2gk7dkbrnwC7/gsIVGOR20JyXjqb/1wiNa0TL/cMkZi53u/p
	2qQCSnvkDYJ8C8MjrU7MrqCiJiJLtr/pEmveK53N113PUM6XvuU70qHfyLHqG3fHKqk=
X-Google-Smtp-Source: AGHT+IGmHff06rUBWnQNSyvAkXcTUBdO6uxAsLEff/Uh41y0ahNHs6h3VvufrQl6YF8MYvAQtufURw==
X-Received: by 2002:a05:622a:59cd:b0:4ae:751e:e4ef with SMTP id d75a77b69052e-4b0fc848f01mr9873211cf.30.1755034152545;
        Tue, 12 Aug 2025 14:29:12 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AZMbMZehW9dpNZtf1HesO4qavGOumyJp+iTSTotUIoukWiz+CQ==
Received: by 2002:ac8:5808:0:b0:4a9:e227:30b with SMTP id d75a77b69052e-4b0a06be026ls118510951cf.1.-pod-prod-02-us;
 Tue, 12 Aug 2025 14:29:11 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUNRn9KTSNzMYCQks4vQvFsW1/eDt0pMmbe7jeghQdVcwRXHSplAs6jIlxbjsKLrh+uJuARiovCj3wMmA==@lists.one-eyed-alien.net
X-Received: by 2002:a05:622a:5a18:b0:4af:1b9e:e691 with SMTP id d75a77b69052e-4b0fc752792mr8696621cf.19.1755034151598;
        Tue, 12 Aug 2025 14:29:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1755034151; cv=none;
        d=google.com; s=arc-20240605;
        b=Rj8liVUDm9EqNqC3VeBTPgn2LK8o7XZQ/0fl+63fC2ZLc8dmDoA0h5Hn6T6mzowzLh
         eicw9Sv35533M1zKHkMv5ST922lBvQPy0XZebQ35nJuLYMROd6nmqofj/9Q77U39YRDG
         EiT0lZ9+IuvY+p0rqRbrOmyowsrcTTx0VP42AAV3ymrkM5VJqoUyWdnLIygmJ/XP2818
         ZLPJuclKRmYHFHnIbJs9B1F4ufXFGvdyNOAGUNUQZHqoBSQRWWn5Ltp4MKP3lPj6VvU4
         vKgraGqhPCRiWwWwoNUmuU6W6Gvjg30I374PdupQNHxtKZITVcb4ble0/GQPCanfqsoa
         aRuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:dkim-signature;
        bh=G9A88w6834VrTqKLEi9WR7kJwaYhdtTvTEQR33TkiE8=;
        fh=B7xbHsbzpr1nfc1/MaaVznvaaqc15A98N35CKO/jcR4=;
        b=MD5Hu3ES5msRhCo5iSJI1hqRrdUDcZQsutTSGVCpiQUiDlxQeNK2ti2l5xrQsnjp+B
         74mTopcEmVoG0YSCWG8l8d/I1Za3LgoS/IkBx2ZscCGdjLtN8o99kp1LEKagpAz6fSAP
         eNVIZw0yPpgVAyru2ykwZZGZNutgHb+wb6cvnt3+vyI4rBZiilfhltMrOzxIAYf3vpI4
         e8FKAy1YVtNJkmfp1k8EihTDgTAGUJv/Cj53O5wIiAi8wsoIEtDp+xKQ4WmmwBBzURQF
         HIrWgJqDjI6GMdksuUjHS1onHE0GkN5oyWnh6V5v2Rbx5OsY54zt4KK1WkkTnIsNaq9q
         sLLw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linux.dev header.s=key1 header.b=U4qIh+hJ;
       spf=pass (google.com: domain of thorsten.blum@linux.dev designates 91.218.175.186 as permitted sender) smtp.mailfrom=thorsten.blum@linux.dev;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.dev
Received: from out-186.mta0.migadu.com (out-186.mta0.migadu.com. [91.218.175.186])
        by mx.google.com with ESMTPS id d75a77b69052e-4af1b6c9e65si120952271cf.873.2025.08.12.14.29.11
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Aug 2025 14:29:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of thorsten.blum@linux.dev designates 91.218.175.186 as permitted sender) client-ip=91.218.175.186;
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.700.81\))
Subject: [usb-storage] Re: [PATCH] usb: storage: realtek_cr: Simplify rts51x_bulk_transport()
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Thorsten Blum <thorsten.blum@linux.dev>
In-Reply-To: <b11a19b6-9fb3-4fdc-b94e-33ff01a634b3@rowland.harvard.edu>
Date: Tue, 12 Aug 2025 23:28:56 +0200
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-usb@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net,
 linux-kernel@vger.kernel.org
Message-Id: <19E72C72-AFD3-4D13-8F14-9A1F96B971D3@linux.dev>
References: <20250812144358.122154-1-thorsten.blum@linux.dev>
 <b11a19b6-9fb3-4fdc-b94e-33ff01a634b3@rowland.harvard.edu>
To: Alan Stern <stern@rowland.harvard.edu>
X-Migadu-Flow: FLOW_OUT
X-Original-Sender: thorsten.blum@linux.dev
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linux.dev header.s=key1 header.b=U4qIh+hJ;       spf=pass
 (google.com: domain of thorsten.blum@linux.dev designates 91.218.175.186 as
 permitted sender) smtp.mailfrom=thorsten.blum@linux.dev;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linux.dev
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

Hi Alan,

On 12. Aug 2025, at 22:06, Alan Stern wrote:
> On Tue, Aug 12, 2025 at 04:43:58PM +0200, Thorsten Blum wrote:
>> Change the function parameter 'buf_len' from 'int' to 'unsigned int' and
>> only update the local variable 'residue' if needed.
>> 
>> Update the rts51x_read_status() function signature accordingly.
> 
> That last part isn't really necessary, is it?  It doesn't make the code 
> any clearer, less buggy, or quicker to execute.

It's mostly for consistency because the parameter 'len' is used to call
rts51x_bulk_transport() which now expects an unsigned integer. I'd still
argue that it makes the code and the function signature a bit clearer
because now the type communicates that 'len' cannot be negative.

>> 	- if (residue)
>> 		- residue = residue < buf_len ? residue : buf_len;
>> 	+ if (residue > buf_len)
>> 		+ residue = buf_len;
> 
> This really has nothing at all to do with whether buf_len is a signed 
> quantity -- it should never be negative.  (And I have no idea why the 
> original code includes that test for residue being nonzero.)

I agree with "it should never be negative" and ideally the type should
reflect this if possible.

It's also easier to reason about the code when comparing two unsigned
integers than having to think about implicit type conversion.

> Much more serious is something you didn't change: Just above these lines 
> it says:
> 
> 	residue = bcs->Residue;
> 
> It should say:
> 
> 	residue = le32_to_cpu(bcs->Residue);

That should probably be another patch, no?

Thanks,
Thorsten

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/19E72C72-AFD3-4D13-8F14-9A1F96B971D3%40linux.dev.
