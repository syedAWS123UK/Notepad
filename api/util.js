const getUserId = (header) => {
    return Headers.app_user_id;
}

const getUserName = (header) => {
    return Headers.app_user_name;
}

const getResponseHeaders = () => {
    return {
        'Access-Control-Allow-Origin": '*'
    }
}

module.exports = {
    getUserId,
    getUserName,
    getResponseHeaders
}